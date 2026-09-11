<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth_api extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('User');

        header('Content-Type: application/json');
        header('Access-Control-Allow-Origin: http://localhost:5173');
        header('Access-Control-Allow-Credentials: true');
        header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
        header('Access-Control-Allow-Headers: Content-Type, Authorization');

        if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
            http_response_code(204);
            exit;
        }
    }

    /**
     * GET /auth_api/me
     * Returns the authenticated user's full profile from the DB,
     * or 401 if no session exists.
     */
    public function me()
    {
        $userId = $this->session->userdata('userId')
            ?: ($this->session->userdata('userData')['id'] ?? null);

        if (!$userId) {
            http_response_code(401);
            echo json_encode(['error' => 'Not authenticated']);
            return;
        }

        $this->db
            ->select('id, first_name, last_name, email, designation, mobile_number,
                      phone_number, address, user_type_id, institute_id,
                      other_institute_name, picture')
            ->where('id', $userId);

        $user = $this->db->get('users')->row();

        if (!$user) {
            http_response_code(404);
            echo json_encode(['error' => 'User not found']);
            return;
        }

        echo json_encode($user);
        exit;
    }

    /**
     * GET /auth_api/logout
     * Destroys the session and logs the user out.
     */
    public function logout()
    {
        $this->session->unset_userdata('loggedIn');
        $this->session->unset_userdata('userData');
        $this->session->unset_userdata('userId');
        $this->session->unset_userdata('isLoggedIn');
        @$this->session->sess_destroy();

        echo json_encode(['success' => true, 'message' => 'Logged out successfully']);
        exit;
    }
}
