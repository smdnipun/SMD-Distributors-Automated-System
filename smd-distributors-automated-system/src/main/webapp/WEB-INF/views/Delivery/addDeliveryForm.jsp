<div class="col-4">

		
		<%
				
			String oid = request.getParameter("oid");
			String cid = request.getParameter("cid");
			String ostate = request.getParameter("ostate");
			
		
		%>
		
		<form action="../../add" method="post">
			
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">Route</label>
				<input type="text" name="route"  class="form-control" id="formGroupExampleInput">
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">Date</label>
				<input type="date" name="date" class="form-control" id="formGroupExampleInput">
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">Status</label>
				<input type="text" name="status" value="<%=ostate%>" class="form-control" id="formGroupExampleInput">
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label" >Order ID</label>
				<input type="text" name="oid" value="<%=oid%>" class="form-control" id="formGroupExampleInput" readonly>
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">Customer ID</label>
				<input type="text" name="cid" value="<%=cid%>" class="form-control" id="formGroupExampleInput" readonly>
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">Vehicle</label>
			    <select name="vehicle" id="formGroupExampleInput">
				    <option value="NC-2025">Tata</option>
				    <option value="NA-0122">Volvo Truck</option>
				    <option value="40-1150">Ashok Leyland</option>
				 </select>
			</div>
			
			<button type="submit" name="submit" class="btn btn-primary"style="background-color:#fbda57; color:#000000">Add</button>
		</form>
		
	</div>