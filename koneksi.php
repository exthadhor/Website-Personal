<?php

$host = 'localhost';
$user = 'root';
$pass = '';
$db = 'db_rumahsakit';
// Koneksi dengan database
$conn = mysqli_connect('localhost', 'root', '', 'db_rumahsakit');

if ($conn) {
    //echo "koneksi berhasil";
}

mysqli_select_db($conn, $db);
?>