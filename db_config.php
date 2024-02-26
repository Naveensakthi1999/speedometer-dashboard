<?php
error_reporting(0); 
	$server="localhost";

	$username="root";	

	$password="";

	$db_name="speedometer";// Database name

$con=mysqli_connect($server,$username,$password,$db_name);
if (mysqli_connect_errno())
    {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }

  ?>