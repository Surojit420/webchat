<?php 
session_start(); 	
	include('../connect.php'); 
	include("UserallData.php");
	$email=$_SESSION['email']; 
	//$data=user_detalis($email);
	$data=$_POST['file1'];
	$time=$_POST['file2'];
	$fri_email=$_POST['file3'];
	$filename=$_FILES['file']['name'];
	$tmp_name=$_FILES['file']['tmp_name'];
	$imageFileType = strtolower(pathinfo($filename,PATHINFO_EXTENSION));
	//echo $imageFileType;
	if($imageFileType=='png'||$imageFileType=='jpg'||$imageFileType=='jpeg')
	{
	    $location="../upload/user_document/images/".$filename;
	}
	if($imageFileType=='mp4')
	{
	    $location="../upload/user_document/videos/".$filename;
	}
	if($imageFileType=='pdf')
	{
	$location="../upload/user_document/pdf/".$filename;
	}
	move_uploaded_file($tmp_name,$location);
	$sql="insert into chat_data(from_user,to_fri,msg,time,date,delete_me,fri_delete_me,delete_me_val,fri_delete_val,status,fri_status,img)values('$email','$fri_email','$filename','$time','$data','0','0','0','0','0','0','$filename')";
	 if(mysqli_query($con,$sql))
	 {
	 	//echo "yes";
	 }
	
 ?>