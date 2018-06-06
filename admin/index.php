<?php include('session.php'); ?>
<?php include('header.php'); ?>
<body>
<div id="wrapper">
<?php include('navbar.php'); ?>
<div style="height:50px;"></div>
<div id="page-wrapper">
<div class="container-fluid">
<div style="height:40px;"></div>
<?php

$sql = "SELECT * FROM product";
$query = $conn->query($sql);
$countProduct = $query->num_rows;

$orderSql = "SELECT * FROM supplier";
$orderQuery = $conn->query($orderSql);
$countOrder = $orderQuery->num_rows;

$query = "SELECT userid, sum(sales_total) FROM sales group by userid";
$res = $conn->query($query);



$lowStockSql = "SELECT * FROM customer";
$lowStockQuery = $conn->query($lowStockSql);
$countLowStock = $lowStockQuery->num_rows;

$salesmansql = "SELECT * FROM salesman";
$sales = $conn->query($salesmansql);
$salesman = $sales->num_rows;

$sale = "SELECT * FROM sales";
$saleorder = $conn->query($sale);
$countsale = $saleorder->num_rows;

$conn->close();

?>


<style type="text/css">
	.ui-datepicker-calendar {
		display: none;
	}
</style>

<!-- fullCalendar 2.2.5-->
     <link rel="stylesheet" href="../plugin/fullcalendar/fullcalendar.min.css">
     <link rel="stylesheet" href="../plugin/fullcalendar/fullcalendar.print.css" media="print">

		 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
		     <script type="text/javascript">
		       google.charts.load('current', {'packages':['corechart']});
		       google.charts.setOnLoadCallback(drawChart);

		       function drawChart() {

		         var data = google.visualization.arrayToDataTable([
							 ['userid', 'sales_total'],





				 <?php
while($row=$res->fetch_assoc())
{
	 echo "['".$row['userid']."',".$row['sum(sales_total)']."],";
}


				 ?>
		         ]);

		         var options = {
		           title: 'Product Sales Statistic'
		         };

		         var chart = new google.visualization.PieChart(document.getElementById('piechart'));

		         chart.draw(data, options);
		       }
		     </script>
<div class="row">

	<div class="col-md-3">
		<div class="panel panel-success">
			<div class="panel-heading">

				<a href="product.php" style="text-decoration:none;color:black;">
					Total Product
					<span class="badge pull pull-right"><?php echo $countProduct; ?></span>
				</a>

			</div> <!--/panel-hdeaing-->
		</div> <!--/panel-->
	</div> <!--/col-md-4-->

		<div class="col-md-3">
			<div class="panel panel-info">
			<div class="panel-heading">
				<a href="supplier.php?o=manord" style="text-decoration:none;color:black;">
					Total Supplier
					<span class="badge pull pull-right"><?php echo $countOrder; ?></span>
				</a>

			</div> <!--/panel-hdeaing-->
		</div> <!--/panel-->
		</div> <!--/col-md-4-->

	<div class="col-md-3">
		<div class="panel panel-danger">
			<div class="panel-heading">
				<a href="customer.php" style="text-decoration:none;color:black;">
					Total Customer
					<span class="badge pull pull-right"><?php echo $salesman; ?></span>
				</a>

			</div> <!--/panel-hdeaing-->
		</div> <!--/panel-->
	</div> <!--/col-md-4-->
	<div class="col-md-3">
		<div class="panel panel-danger">
			<div class="panel-heading">
				<a href="customer.php" style="text-decoration:none;color:black;">
					Total Sales Person
					<span class="badge pull pull-right"><?php echo $countLowStock; ?></span>
				</a>

			</div> <!--/panel-hdeaing-->
		</div> <!--/panel-->
	</div> <!--/col-md-4-->

	<div class="col-md-4">
		<div class="card">
		  <div class="cardHeader">
				<div class="cardContainer">
			    <p> <i></i>Today is</p>
			  </div>
		    <h1><?php echo date('d'); ?></h1>
		  </div>

		  <div class="cardContainer">
		    <p><?php echo date('l') .' '.date('d').', '.date('Y'); ?></p>
		  </div>
		</div>
		<br/>

		<div class="card">
		  <div class="cardHeader" style="background-color:#245580;">
		    <h1><?php if($countsale) {
		    	echo $countsale;
		    	} else {
		    		echo '0';
		    		} ?></h1>
		  </div>

		  <div class="cardContainer">
		    <p> <i class="glyphicon glyphicon-usd"></i> Total Sales</p>
		  </div>
		</div>

	</div>

	<div class="col-md-6">
		<div id="piechart" style="width: 900px; height: 500px;"></div>


	</div>
<div class="col-md-2" >

 <ul><br></ul>
 <ul><br></ul>
 <ul><br></ul>
 <ul style="margin-left: 15px; font-size:10px">mamun</ul>
 <ul style="margin-left: 15px; font-size:10px">Sayem</ul>
 <ul style="margin-left: 19px; font-size:10px">Nipon</ul>
 <ul style="margin-left: 19px; font-size:10px">Sagor</ul>
 <ul style="margin-left: 19px; font-size:10px">Sojib</ul>


</div>

</div> <!--/row-->

<!-- fullCalendar 2.2.5 -->
<script src="../plugin/moment/moment.min.js"></script>
<script src="../plugin/fullcalendar/fullcalendar.min.js"></script>


<script type="text/javascript">
	$(function () {
			// top bar active
	$('#navDashboard').addClass('active');

      //Date for the calendar events (dummy data)
      var date = new Date();
      var d = date.getDate(),
      m = date.getMonth(),
      y = date.getFullYear();

      $('#calendar').fullCalendar({
        header: {
          left: '',
          center: 'title'
        },
        buttonText: {
          today: 'today',
          month: 'month'
        }
      });


    });
</script>

</div>
</div>
</div>
<?php include('script.php'); ?>
<?php include('modal.php'); ?>
</body>
</html>
