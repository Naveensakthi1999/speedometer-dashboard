<?php 
error_reporting(0);
include('db_config.php');
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type"); 


$select  = mysqli_query($con,"select * from `direction` where `id`!='' order by `id` desc ")or die(mysqli_error($con));
$select1 = mysqli_fetch_array($select);

$select_new  = mysqli_query($con,"select * from `speedometer` where `id`!='' order by `id` desc ")or die(mysqli_error($con));
$select_new1 = mysqli_fetch_array($select_new);


$json = array("left_direction" =>$select1['left_direction'], "right_direction" => $select1['right_direction'], "speedometer" => $select_new1['button_status']);
// send data as json format
header("Content-Type: application/json",true);
echo json_encode($json);

?>