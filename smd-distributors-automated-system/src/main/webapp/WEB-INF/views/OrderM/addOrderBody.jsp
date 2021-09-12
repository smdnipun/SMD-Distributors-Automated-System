<%
int id = Integer.parseInt(request.getSession().getAttribute("CustomerID").toString());
%>

 		<script>
            
            function isInputNumber(evt){
                
                var ch = String.fromCharCode(evt.which);
                
                if(!(/[0-9]/.test(ch))){
                    evt.preventDefault();
                }
                
            }
            
            
            
        </script>
        
        <script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script type="text/javascript">
        function sum() {
            var txtFirstNo = document.getElementById('txtFirstNo').value;
            var txtSecondNo = document.getElementById('txtSecondNo').value;
            var result = parseInt(txtFirstNo) * parseInt(txtSecondNo);
            if (!isNaN(result)) {
                document.getElementById('txtResult').value = result;
            }
        }
    </script>
        
	
<div class="col-9">
<br>
<center>
<h1>Add Order</h1>
</center>
<br>
<div class="content">
  

	<form action="insert" method="post">
	
	
<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Customer ID</label>
  <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Enter Customer ID" name="CID" required="true" value="<%=id %>">
</div>
<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Product ID</label>
  <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Enter " name="PID" required="true">
</div>
<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Unit Price</label>
  <input type="text" class="form-control" id="txtFirstNo" placeholder="Enter " name="PID" required="true" onkeypress="sum()">
</div>
<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Quantity</label>
  <input type="text" class="form-control" id="txtSecondNo" placeholder="Enter Quantity" name="QTY" onkeypress="isInputNumber(event)" required="true" onkeyup="sum()">
</div>

<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Total price</label>
  <input type="text" class="form-control" placeholder="Enter Total price" name="TPRICE" onkeyup="isInputNumber(event)" required="true" id="txtResult">
</div>



  <button type="submit" class="btn btn-primary">Add Order</button>
</form>

</div>
	</div>
	<br><br><br><br>
