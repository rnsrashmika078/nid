<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * SSO bridge from the instrument (CodeIgniter) session into the
 * inst-care (React) technician module.
 *
 * A user logged into instrument's session is issued a JWT minted with the
 * SAME secret and payload format used by inst-care-be, then redirected to
 * inst-care-fe's /sso endpoint which stores it exactly like a normal login.
 */
class Sso extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('jwt');
    }

    public function index()
    {
        $this->technician();
    }

    /**
     * Mints the SSO token for the currently logged-in instrument user and
     * redirects them to the technician module (inst-care-fe) without login.
     */
    public function technician()
    {
        $userId = $this->session->userdata('userId')
            ?: ($this->session->userdata('userData')['id'] ?? null);

        if (!$userId) {
            redirect(base_url('user_authentication'));
            return;
        }

        $user = $this->db
            ->select('id, username, user_type_id')
            ->where('id', $userId)
            ->get('users')
            ->row();

        if (!$user) {
            redirect(base_url('user_authentication'));
            return;
        }

        $role = (int) $user->user_type_id;

        // Same payload shape as inst-care-be LoginController::login()
        $payload = [
            'sub' => (int) $user->id,
            'username' => $user->username,
            'role' => $role,
            'iat' => time(),
            'exp' => time() + 36000, // 10 hour expiry, same as normal login
        ];

        if ($role === 10) {
            $tech = $this->db
                ->select('id')
                ->where('user_id', $user->id)
                ->limit(1)
                ->get('technician_details')
                ->row();

            if ($tech) {
                $payload['technician_id'] = (int) $tech->id;
            }
        }

        $secret = env('JWT_SECRET', '');
        if ($secret === '') {
            // Mirror the fallback used by inst-care-be when JWT_SECRET is unset.
            $secret = 'fallback_secret_key';
        }

        $token = $this->jwt->encode($payload, $secret);

        $techUrl = rtrim(env('TECHNICIAN_URL', 'http://localhost:5173'), '/');

        redirect($techUrl . '/sso?token=' . rawurlencode($token));
    }
}