<?php

session_start();
error_reporting(E_ERROR | E_WARNING | E_PARSE);

// Connect database
$dbname = 'company_tourist';
$mysqli = mysqli_connect("localhost", "root", "", $dbname);
mysqli_set_charset($mysqli, 'UTF8');

// Check connect
if (mysqli_connect_errno()) {
    echo 'Failed to connect to Mysql : ' . $mysqli_connect_errno();
}
