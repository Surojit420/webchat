<?php
include("connect.php");
session_start();
date_default_timezone_set('Asia/Kolkata'); 
$var=$_SESSION['email'];
$tme=date("m/d/Y, h:i:s A");
//echo $tme;
//$date=date_create($_REQUEST['time']);
//print_r($date);
//$tim=date_format($date,"d/m/Y h:i:s A");
//echo $tim;
$sql="update login_detais set lasttime='$tme',activelog = 'offline' where username='$var'";
mysqli_query($con,$sql);
session_unset();
header('location: New folder/index.php');
?>