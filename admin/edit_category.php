<?php
	include('session.php');

	$categoryid=$_GET['categoryid'];


	$name=$_POST['category_name'];



	mysqli_query($conn,"update category set category_name='$name' where categoryid='$categoryid'");

	?>
		<script>
			window.alert('Category updated successfully!');
			window.history.back();
		</script>
	<?php

?>
