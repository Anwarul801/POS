<?php
	include('session.php');

	$categoryid=$_GET['categoryid'];

	mysqli_query($conn,"delete from category where categoryid='$categoryid'");


	header('location:category.php');

?>
