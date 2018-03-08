<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "Joost_van_Bree_guestBook";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

?>
