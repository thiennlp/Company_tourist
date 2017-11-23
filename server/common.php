<?php

include_once("/connect.php");

/*
 * Select menu from db
 * 
 * function getMenu()
 * 
 * param string $table
 * param string $condition
 * 
 * return array $result
 */

function getData($table, $condition, $column = '*') {
    global $mysqli;
    $row = $mysqli->query("SELECT $column FROM $table");
    if (!empty($condition)) {
        $row = $mysqli->query("SELECT $column FROM $table WHERE $condition");
    }
    while ($data = $row->fetch_array()) {
        $result[] = $data;
    }
    return $result;
}

/*
 * Format number to phone number
 * 
 * function formatPhoneNumber()
 * 
 * param string $data
 * 
 * return array $result
 */

function formatPhoneNumber($data) {
    $result = substr($data, 0, 4) . '-' . substr($data, 4, 3) . '-' . substr($data, 7);
    return $result;
}
