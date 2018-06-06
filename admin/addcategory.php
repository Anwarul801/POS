<?php
	include('session.php');

	$cname=$_POST['category_name'];




	mysqli_query($conn,"insert into category (category_name) values ('$cname')");

	?>
		<script>
			window.alert('Category added successfully!');
			window.history.back();
		</script>
	<?php
?>
