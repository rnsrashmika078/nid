<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * .env loader for CodeIgniter 3
 *
 * Parses the .env file at the front controller root (FCPATH) and:
 *  - populates $_ENV and getenv() variables
 *  - provides an env($key, $default) helper
 *
 * Load this file at the top of any config file that needs environment values.
 */
if ( ! function_exists('load_env_file'))
{
	function load_env_file($path)
	{
		$vars = array();

		if ( ! file_exists($path))
		{
			return $vars;
		}

		$lines = file($path, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);

		foreach ($lines as $line)
		{
			$line = trim($line);

			// Skip comments and blank/invalid lines
			if ($line === '' || $line[0] === '#' || strpos($line, '=') === FALSE)
			{
				continue;
			}

			list($key, $value) = explode('=', $line, 2);
			$key   = trim($key);
			$value = trim($value);

			if ($key === '')
			{
				continue;
			}

			// Strip wrapping quotes
			if (strlen($value) >= 2
				&& (($value[0] === '"' && substr($value, -1) === '"')
					|| ($value[0] === "'" && substr($value, -1) === "'")))
			{
				$value = substr($value, 1, -1);
			}
			// Strip inline comments from unquoted values
			elseif (strpos($value, ' #') !== FALSE)
			{
				$value = trim(substr($value, 0, strpos($value, ' #')));
			}

			$vars[$key] = $value;
			putenv($key.'='.$value);
			$_ENV[$key] = $value;
		}

		return $vars;
	}
}

load_env_file(FCPATH.'.env');

if ( ! function_exists('env'))
{
	function env($key, $default = NULL)
	{
		$value = getenv($key);

		if ($value === FALSE || $value === NULL || $value === '')
		{
			return $default;
		}

		switch (strtolower($value))
		{
			case 'true':
			case '(true)':
				return TRUE;
			case 'false':
			case '(false)':
				return FALSE;
			case 'null':
			case '(null)':
				return NULL;
			case 'empty':
			case '(empty)':
				return '';
			default:
				return $value;
		}
	}
}