<div class="col-4">
	<form action="../../pay" method="Post">
		<!-- input date -->
		<div class="mb-3">
			<label for="formGroupExampleInput" class="form-label">Date</label> <input
				type="date" class="form-control" id="DATE" name="Date" required />
			<!--input CID -->
		</div>
		<div class="mb-3">
			<label for="formGroupExampleInput" class="form-label">Customer
				ID :</label><br> <input type="number" class="form-control" id="CID"
				name="CID" Required>

			<!--input OID -->
		</div>
		<div class="mb-3">
			<label for="formGroupExampleInput" class="form-label">Invoice
				ID :</label> <input type="number" class="form-control" id="OID" name="OID"
				Required>
		</div>
		<!--input Amount -->
		<div class="mb-3">
			<label for="formGroupExampleInput" class="form-label">Amount
				:</label> <input type="number" class="form-control" id="PidAmount"
				name="PaidAmount" Required>
		</div>
		<!--Submit Button -->
		<button type="submit" class="btn btn-primary"
			style="background-color: #fbda57; color: #000000">Pay</button>

	</form>
	<br> <br> <br>
</div>