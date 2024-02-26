<?php 
error_reporting(0);
include('db_config.php');
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type"); 


$insert = mysqli_query($con,"insert into `direction`(`left_direction`,`right_direction`)values('".$_POST['left']."','".$_POST['right']."')") or die(mysqli_error($con));

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