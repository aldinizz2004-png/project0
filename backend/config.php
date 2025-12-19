<?php
// backend/config.php
$DB_HOST = getenv("DB_HOST") ?: "localhost";
$DB_USER = getenv("DB_USER") ?: "appuser";
$DB_PASS = getenv("DB_PASS") ?: "apppass";
$DB_NAME = getenv("DB_NAME") ?: "restaurant_db";
