<!-- History -->
    <div class="modal fade" id="detail<?php echo $hrow['salesid']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<center><h4 class="modal-title" id="myModalLabel">Purchase Full Details</h4>


          </center>
                </div>
                <div class="modal-body">
				<?php
					$sales=mysqli_query($conn,"select * from sales where salesid='".$hrow['salesid']."'");
					$srow=mysqli_fetch_array($sales);
				?>
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12">
							<p class="pull-right">Date: <?php echo date("F d, Y", strtotime($srow['sales_date'])); ?></p>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<table width="100%" class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th>Product Name</th>
										<th>Price</th>
										<th>Purchase Qty</th>
										<th>SubTotal</th>
									</tr>
								</thead>
								<tbody>
									<?php
										$total=0;
										$pd=mysqli_query($conn,"select * from sales_detail left join product on product.productid=sales_detail.productid where salesid='".$hrow['salesid']."'");
										while($pdrow=mysqli_fetch_array($pd)){
											?>
											<tr>
												<td><?php echo ucwords($pdrow['product_name']); ?></td>
												<td align="right"><?php echo number_format($pdrow['product_price'],2); ?></td>
												<td><?php echo $pdrow['sales_qty']; ?></td>
												<td align="right">
													<?php
														$subtotal=$pdrow['product_price']*$pdrow['sales_qty'];
														echo number_format($subtotal,2);
														$total+=$subtotal;
													?>
												</td>
											</tr>
											<?php
										}
									?>
									<tr>
										<td align="right" colspan="3"><strong>Total</strong></td>
										<td align="right"><strong><?php echo number_format($total,2); ?></strong></td>
									</tr>
								</tbody>
							</table>
						</div>
            <div class="row"> <!--Customer <section-->
              <input  id="interest_rate" type="number" min="0" max="100" value="10" step=".1" onchange="computeLoan()" class="form-control">
            <script>

              function computeLoan(){
                var amount = document.getElementById('amount').value;
                var interest_rate = document.getElementById('interest_rate').value;
                var takas = document.getElementById('taka').value;

                var interest = (amount * (interest_rate * .01));
                var payments = (amount  - interest);
                var takass = (payments -takas);

                document.getElementById('payment').innerHTML = payments;
                document.getElementById('total').innerHTML = takass;
              }
            </script>

              <div class="col-lg-8">
                <div class="col-lg-5">
                </div>

            <div class="col-lg-3">
              <label for="[object Object]">Customer Name</label>
            </div>
                <div class="col-lg-4">

            <select class="form-control" id="sel1">
                   <option>Select Cutomer</option>
              <?php
                $cat=mysqli_query($conn,"select * from people");
                while($catrow=mysqli_fetch_array($cat)){
                  ?>
                    <option value="<?php echo $catrow['customarid']; ?>"><?php echo $catrow['customer_name']; ?></option>
                  <?php
                }
              ?>
            </select>
                </div>

              </div>
              <div class="col-lg-2">
                    <label for="[object Object]">Customer Offers</label>

              </div>
              <div class="col-lg-2">
                <input   id="amount" type="number" min="1" max="10000000" onchange="computeLoan()" class="form-control">

              </div>


            </div> <!--section-->
            <div class="row" >
                 <div class="col-lg-8">

                 </div>
                 <div class="col-lg-2" style="border-top:1px solid black">
                   <div class="row">
                     <div class="col-lg-12">
                        <label>SubTotal</label>
                     </div>
                     <div class="col-lg-12">

                     </div>
                  </div>

                 </div>
                 <div class="col-lg-2" style="border-top:1px solid black">
                  <div class="row">
                    <div class="col-lg-12">
                    <h4 id="payment"></h4>
                    </div>
                    <div class="col-lg-12">

                    </div>
                 </div>
            </div>
            </div>
            <div class="row"> <!--Customer <section-->


            <div class="col-lg-8">
              <div class="col-lg-5">
              </div>

            <div class="col-lg-3">
            <label for="[object Object]">Payment Mathod</label>
            </div>
              <div class="col-lg-4">

            <select class="form-control" id="sel1">


            <option>Cash</option>
            <option>Bkash</option>
            <option>DushBangla</option>
            <option>Visa Card</option>
            </select>
              </div>

            </div>
            <div class="col-lg-2">
              <div class="row">
                <div class="col-lg-12">
                   <label>Enter Amount</label>
                </div>
                <div class="col-lg-12" >
                   <label>Change</label>
                </div>
             </div>


            </div>
            <div class="col-lg-2">
              <div class="row">
                <div class="col-lg-2">
                  <input  id="taka" type="number"  onchange="computeLoan()" class="form-control">
                </div>
                <div class="col-lg-12" style="border-top:1px solid black">
                   <h4 id="total"></h4>

                </div>
             </div>

            </div>

            </div> <!--section-->

					</div>
				</div>
				</div>
        <div class="modal-footer">
          <div id="printBut" class="pull-right">
          <button type="button" class="btn btn-success btn-sm">
              PRINT
              <span class="glyphicon glyphicon-print" aria-hidden="true"></span>
          </button>
          <script type="text/javascript">
          $(document).on('change', '#dailyDate', function(event) {
            event.preventDefault();
            /* Act on the event */
            var date = $('#dailyDate').val();
            if(date == '' || date == null){
              $('#printBut').hide();
            }else{
              $('#printBut').show();
            }
            dailySales(date);
          });
          $('#printBut').click(function(event) {
            /* Act on the event */
            var date = $('#dailyDate').val();
            window.open('full_details.php?salesid='$sqrow['salesid'],'width=600,height=400');
          });

          </script>
<script>
          function printContent(el){
            var restorepage = document.body.innerHTML;
            var printcontent = document.getElementById(el).innerHTML;
            document.body.innerHTML = printcontent;
            window.print();
            document.body.innerHTML = restorepage;
          }
</script>
          </div>
            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
        </div>
        <button onclick="myFunction()">Print this page</button>

<script>
function myFunction() {
window.print();
}
</script>
            </div>
        </div>
    </div>
