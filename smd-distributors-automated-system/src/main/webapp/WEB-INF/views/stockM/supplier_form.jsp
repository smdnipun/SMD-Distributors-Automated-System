<div class="col-3 justify-content-center">
	<form action="../../SupplierAdding" method="Post">
		<div class="form-group">
			<label for="exampleInputEmail1">Supplier Name</label> <input type="text"
				class="form-control" id="formGroupExampleInput" name="sname" placeholder="ex:-Sanstha Cement" required>
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Product Name</label> <input type="text"
				class="form-control" id="formGroupExampleInput" name="pname" placeholder="ex:-Sanstha" required>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Address</label> <input
				type="text" class="form-control" id="formGroupExampleInput" name="address" placeholder="ex:-kandy" required>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Telephone Number</label> <input
				type="text" class="form-control" id="formGroupExampleInput" name="tno" placeholder="ex:-94702834234" Required pattern="[0-9]{11}">
		</div>
		
		<button type="submit" class="btn btn-primary">Submit</button>
		
	</form>
</div>