<?php

include_once("common.php");

// 
$menu = array();
$category = array();

// Menu
$menu = getData('category', 'is_display = 1');

// Filter follow category
foreach ($menu as $value) {
    $name = isset($value['english_category']) ? $value['english_category'] : '';
    $category[$value['english_category']] = $value;
}

// About page
$about = isset($category['About']) ? $category['About'] : null;

// Passenger page
$passenger = isset($category['Passenger']) ? $category['Passenger'] : null;
if (!empty($passenger)) {
    $contentPassenger = getData('product', 'id_category =' . $passenger['id_category']);
}

// Ship page
$ship = isset($category['Ship']) ? $category['Ship'] : null;

// Contact page
$contact = isset($category['Contact']) ? $category['Contact'] : null;

