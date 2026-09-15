<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Minimal HS256/384/512 JWT encoder/decoder for CodeIgniter 3.
 * Produces standard JSON Web Tokens that are interoperable with the
 * firebase/php-jwt library used by inst-care-be.
 */
class Jwt
{
    /**
     * Encode a payload into a JWT.
     *
     * @param array  $payload Claims (e.g. sub, role, iat, exp).
     * @param string $key     HMAC secret (shared with inst-care-be).
     * @param string $alg     HS256, HS384 or HS512.
     * @return string
     */
    public function encode(array $payload, string $key, string $alg = 'HS256'): string
    {
        $header = $this->base64UrlEncode(json_encode(['typ' => 'JWT', 'alg' => $alg]));
        $encodedPayload = $this->base64UrlEncode(json_encode($payload));

        $signingInput = $header . '.' . $encodedPayload;
        $signature = $this->base64UrlEncode($this->sign($signingInput, $key, $alg));

        return $signingInput . '.' . $signature;
    }

    /**
     * Decode and verify a JWT. Returns the payload or null when invalid/expired.
     *
     * @param string $token
     * @param string $key
     * @param string $alg
     * @return stdClass|null
     */
    public function decode(string $token, string $key, string $alg = 'HS256'): ?stdClass
    {
        $parts = explode('.', $token);
        if (count($parts) !== 3) {
            return null;
        }

        list($header, $encodedPayload, $signature) = $parts;

        try {
            $decodedSignature = $this->base64UrlDecode($signature);
        } catch (Throwable $e) {
            return null;
        }

        $expectedSignature = $this->sign($header . '.' . $encodedPayload, $key, $alg);

        if (!hash_equals($expectedSignature, $decodedSignature)) {
            return null;
        }

        $payload = json_decode($this->base64UrlDecode($encodedPayload));
        if (!$payload) {
            return null;
        }

        if (isset($payload->exp) && time() >= $payload->exp) {
            return null;
        }

        return $payload;
    }

    /**
     * @param string $input
     * @param string $key
     * @param string $alg
     * @return string Raw HMAC signature bytes.
     */
    private function sign(string $input, string $key, string $alg): string
    {
        switch ($alg) {
            case 'HS256':
                return hash_hmac('sha256', $input, $key, true);
            case 'HS384':
                return hash_hmac('sha384', $input, $key, true);
            case 'HS512':
                return hash_hmac('sha512', $input, $key, true);
        }

        throw new RuntimeException('Unsupported JWT algorithm: ' . $alg);
    }

    /**
     * @param string $data
     * @return string
     */
    private function base64UrlEncode(string $data): string
    {
        return rtrim(strtr(base64_encode($data), '+/', '-_'), '=');
    }

    /**
     * @param string $data
     * @return string
     */
    private function base64UrlDecode(string $data): string
    {
        $remainder = strlen($data) % 4;
        if ($remainder) {
            $data .= str_repeat('=', 4 - $remainder);
        }

        return base64_decode(strtr($data, '-_', '+/'), true);
    }
}