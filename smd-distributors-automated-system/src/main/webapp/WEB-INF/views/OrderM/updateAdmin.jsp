<script>
            
            function isInputNumber(evt){
                
                var ch = String.fromCharCode(evt.which);
                
                if(!(/[0-9]/.test(ch))){
                    evt.preventDefault();
                }
                
            }
            
            
            
        </script>

<div class="col-10">
<%
	String oid=request.getParameter("oid");
	String cid=request.getParameter("cid");
	String odate=request.getParameter("odate");
	String ostate=request.getParameter("ostate");
	String pamount=request.getParameter("pamount");
	String ramount=request.getParameter("ramount");
	String tprice=request.getParameter("tprice");
	String qty=request.getParameter("qty");
	String pid=request.getParameter("pty");

%>
<br>
<center>
<h1>Update Order</h1>
</center>
<br>
<div class="content">
	<form action=<%=request.getContextPath() + "/updateadmin"%> method="post">
	
<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Order ID</label>
  <input type="text" class="form-control" id="formGroupExampleInput2" value="<%=oid %>" name="OID" readonly>
</div>	
<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Customer ID</label>
  <input type="text" class="form-control" id="formGroupExampleInput2" value="<%=cid %>" name="CID" readonly>
</div>
<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Order Date</label>
  <input type="text" class="form-control" id="formGroupExampleInput" value="<%=odate %>" name="ODATE">
</div>
<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Order States</label>
  <input type="text" class="form-control" id="formGroupExampleInput2" value="<%=ostate %>" name="OSTATES">
</div>
<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Total price</label>
  <input type="text" class="form-control" id="formGroupExampleInput" value="<%=tprice %>"  name="TPRICE">
</div>
<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Paid Amount</label>
  <input type="text" class="form-control" id="formGroupExampleInput2" value="<%=pamount %>" name="PAT">
</div>
<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Remain Amount</label>
  <input type="text" class="form-control" id="formGroupExampleInput2" value="<%=ramount %>" name="RAT">
</div>
<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Quantity</label>
  <input type="text" class="form-control" id="formGroupExampleInput2" value="<%=qty %>" name="QTY">
</div>
<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Product ID</label>
  <input type="text" class="form-control" id="formGroupExampleInput2" value="<%=pid %>" name="PID">
</div>
  <button type="submit" class="btn btn-primary">Update Order</button>
</form>
	</div>
	<br><br><br>
	</div>
	
