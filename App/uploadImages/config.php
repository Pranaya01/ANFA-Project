<?php

$hostname = "localhost";
$username = "root";
$password = "";
$dbname = "final_year_project";

$con = mysqli_connect($hostname, $username, $password, $dnname);
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
  }

  