<?php

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

function getMenu($table, $condition = '*') {
    global $mysqli;
    $row = $mysqli->query("SELECT $condition FROM $table");
    while ($data = $row->fetch_array()) {
        $result[] = $data;
    }
    return $result;
}
