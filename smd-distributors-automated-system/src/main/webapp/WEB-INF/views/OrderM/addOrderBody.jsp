<script>
            
            function isInputNumber(evt){
                
                var ch = String.fromCharCode(evt.which);
                
                if(!(/[0-9]/.test(ch))){
                    evt.preventDefault();
                }
                
            }
            
            
            
        </script>

<div class="col-10">
	<form action="insert" method="post">
	
	
<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Customer ID</label>
  <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Enter Customer ID" name="CID">
</div>

<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Total price</label>
  <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Enter Total price" name="TPRICE" onkeypress="isInputNumber(event)">
</div>

<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Quantity</label>
  <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Enter Quantity" name="QTY" onkeypress="isInputNumber(event)">
</div>
<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Product ID</label>
  <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Enter " name="PID">
</div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>

<form action="viewOrderCustomer" method="post">
<button type="submit" class="btn btn-primary">My Orders</button>
</form>

	</div>
	<br><br><br><br>
