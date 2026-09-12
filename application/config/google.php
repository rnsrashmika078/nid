<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------
|  Google API Configuration
| -------------------------------------------------------------------
|
| To get API details you have to create a Google Project
| at Google API Console (https://console.developers.google.com)
|
|  client_id         string   Your Google API Client ID.
|  client_secret     string   Your Google API Client secret.
|  redirect_uri      string   URL to redirect back to after login.
|  application_name  string   Your Google application name.
|  api_key           string   Developer key.
|  scopes            string   Specify scopes
*/
require_once __DIR__.'/env.php';

$config['google']['client_id']        = env('GOOGLE_CLIENT_ID', 'YOUR_CLIENT_ID');
$config['google']['client_secret']    = env('GOOGLE_CLIENT_SECRET', 'YOUR_CLIENT_SECRET');

$config['google']['redirect_uri']     = env('GOOGLE_REDIRECT_URI', 'http://localhost:8080/user_authentication');

$config['google']['application_name'] = env('GOOGLE_APPLICATION_NAME', 'Login to CodexWorld.com');
$config['google']['api_key']          = env('GOOGLE_API_KEY', '');
$config['google']['scopes']           = array();