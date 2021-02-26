<?php
include('cleartime.php'); 
include('../connect.php');
include('backend.php'); 
$id=$_POST['id'];
$us_email=$_POST['usmail'];
$fri_email=$_POST['frmail'];
$time=$_POST['time'];
$time_re=$_POST['time_re'];
//echo $time_re;
$sql="select  * from chat_data WHERE from_user in('$us_email','$fri_email') and to_fri in('$fri_email','$us_email') ORDER BY id DESC LIMIT 1";
$val=mysqli_query($con,$sql);
$t=mysqli_fetch_array($val);
$re_id=$t['id'];
$time_rep=substr_replace($t['time'],$time_re,6,2);
//echo $id.$us_email.$fri_email;
$sql="update chat_data set delete_me='$us_email',fri_delete_me='$fri_email',delete_me_val='you deleted this massage',fri_delete_val='you deleted this massage',time='$time' where id='$id'";
mysqli_query($con,$sql);
$sql="update chat_data set time='$time_rep' where id='$re_id'";
mysqli_query($con,$sql);
?>