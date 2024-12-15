<?php
include("config.php");
extract($_POST);
$sql = "INSERT INTO `feedbacktb`(`fullname`, `phone`, `email`, `message`) VALUES ('".$firstname."',".$phone.",'".$email."','".$message."')";
$result = $mysqli->query($sql);
if(!$result){
    die("Couldn't enter data: ".$mysqli->error);
}
$mysqli->close();
?>