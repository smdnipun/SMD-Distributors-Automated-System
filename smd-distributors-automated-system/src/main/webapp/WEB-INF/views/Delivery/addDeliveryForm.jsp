<div class="col-4">

		
		<%
		
		String oid = " ";
		String cid = " ";
		String ostate = " ";
		
			oid = request.getParameter("oid");
			cid = request.getParameter("cid");
			ostate = request.getParameter("ostate");
			
			if(oid==null){
				oid="";
			}
			if(cid==null){
				cid="";
			}
			if(ostate==null){
				ostate="";
			}
		
		%>
		
		
		<form autocomplete="off" action="../../addd" method="post">
			
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">Route</label>
				<input type="text" name="route"  aria-describedby="" class="form-control" id="formGroupExampleInput" placeholder="Peradeniya,Kandy" required>
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">Date</label>
				<input type="date" name="date" aria-describedby="" class="form-control" id="dateinput"  required>
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">Status</label>
				<select class="dropdown-header" name="status" id="formGroupExampleInput"required>
				    <option value="<%=ostate%>"><%=ostate%></option>
				    <option value="delivered">delivered</option>
				  
				 </select>
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label" >Order ID</label>
				<input type="text" name="oid" aria-describedby="" value="<%=oid%>" class="form-control" id="formGroupExampleInput" required readonly>
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">Customer ID</label>
				<input type="text" name="cid" aria-describedby="" value="<%=cid%>" class="form-control" id="formGroupExampleInput" required readonly>
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">Vehicle</label>
			    <select class="dropdown-header" name="vehicle" id="formGroupExampleInput" required>
				    <option value="NC-2025">Tata</option>
				    <option value="NA-0122">Volvo Truck</option>
				    <option value="40-1150">Ashok Leyland</option>
				 </select>
			</div>
			
			<button type="submit" name="submit" class="btn btn-primary"style="background-color:#fbda57; color:#000000">Add</button>
		</form>
		
	</div>
<script>

var date = new Date();
var tdate = date.getDate();
var month = date.getMonth() +1;

if(tdate<10){
tdate = '0'+tdate;
}

if(month<10){
month='0'+ month;
}

var year = date.getUTCFullYear();
var minDate = year + "-" + month + "-" + tdate;
document.getElementById("dateinput").setAttribute('min',minDate);

</script>