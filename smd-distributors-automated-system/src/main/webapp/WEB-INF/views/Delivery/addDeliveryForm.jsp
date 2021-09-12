<div class="col-4">

		
		<%
		
		String oid = " ";
		String cid = " ";
		String ostate = " ";
		
			oid = request.getParameter("oid");
			cid = request.getParameter("cid");
			ostate = request.getParameter("ostate");
			
		
		%>
		
		
		<form autocomplete="off" action="../../addd" method="post">
			
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">Route</label>
				<input type="text" name="route"  aria-describedby="" class="form-control" id="formGroupExampleInput">
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">Date</label>
				<input type="date" name="date" aria-describedby="" class="form-control" id="formGroupExampleInput">
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">Status</label>
				<input type="text" name="status" aria-describedby="" value="<%=ostate%>" class="form-control" id="formGroupExampleInput">
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label" >Order ID</label>
				<input type="text" name="oid" aria-describedby="" value="<%=oid%>" class="form-control" id="formGroupExampleInput" readonly>
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">Customer ID</label>
				<input type="text" name="cid" aria-describedby="" value="<%=cid%>" class="form-control" id="formGroupExampleInput" readonly>
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