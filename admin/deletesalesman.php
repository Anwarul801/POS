<?php
	include('session.php');

	$id=$_GET['id'];

	mysqli_query($conn,"delete from user where userid='$id'");
	mysqli_query($conn,"delete from salesman where userid='$id'");

	header('location:salesman.php');

?>
