<?php 
error_reporting(0);
include('db_config.php');
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type"); 


$insert = mysqli_query($con,"insert into `speedometer`(`button_status`)values('".$_POST['button_status']."')") or die(mysqli_error($con));

if ($insert) {
	$return = true;
} else {
	$return = false;
}

$json = array("op" =>$return);
// send data as json format
header("Content-Type: application/json",true);
echo json_encode($json);

?>