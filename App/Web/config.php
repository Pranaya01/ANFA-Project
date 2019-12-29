<?php
$servername = "localhost";
$username = "root";
$password = "";
$db_name = "digital_ANFA";

$conn_db = mysqli_connect("$servername", "$username", "$password", "$db_name");

if(!$conn_db)
{
    echo "Connection Error";
}
