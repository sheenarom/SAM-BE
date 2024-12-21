<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "corememories";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM islandsofpersonality";
$result = $conn->query($sql);
?>
