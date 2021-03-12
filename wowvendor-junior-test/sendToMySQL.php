<?php
const servername = "localhost";
const username = "root";
const password = "root";
const dbname = "WowVendor";

$conn = new mysqli(servername, username, password, dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$rockPosition = mysqli_real_escape_string($conn, $_POST['rockPosition']);
$time = mysqli_real_escape_string($conn, $_POST['time']);
$jumpPos = mysqli_real_escape_string($conn, $_POST['jumpPos']);
$rockSize = mysqli_real_escape_string($conn, $_POST['rockSize']);
$isWin = mysqli_real_escape_string($conn, $_POST['isWin']);

$sql = "INSERT INTO donutGame (ROCK_POSITION, TIME, JUMP_POS, ROCK_SIZE, IS_WIN) VALUES ($rockPosition,$time, $jumpPos, $rockSize, $isWin)";
if ($conn->query($sql) === TRUE) {
    echo "Added to database successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
$conn->close();

