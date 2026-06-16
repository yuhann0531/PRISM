<?php
$pdo = new PDO('mysql:host=127.0.0.1;dbname=prism_db;charset=utf8', 'root', '', [
  PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
]);
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PATCH, DELETE');
header('Access-Control-Allow-Headers: Content-Type');
