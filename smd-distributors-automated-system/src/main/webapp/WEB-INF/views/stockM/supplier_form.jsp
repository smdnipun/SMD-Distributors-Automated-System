
<div class="col-3 justify-content-center">
<div>
<h5>Add Suppplier</h5>
</div>
	<form action="../../SupplierAdding" method="Post">
	<!--Input supplier name -->
		<div class="form-group">
			<label for="exampleInputEmail1">Supplier Name</label> <input
				type="text" class="form-control" id="formGroupExampleInput"
				name="sname" placeholder="ex:-Tokiyo Cement" required>
		</div>
		<!--Input Product Name -->
		<div class="form-group">
	<label for="exampleInputPassword1">Item Name</label> <input type="text"
					class="form-control" id="exampleInputPassword1" name="pname" placeholder="ex:-Tokiyo" Required> 
			</select>
		</div>
		<!--Input Address -->
		<div class="form-group">
			<label for="exampleInputPassword1">Address</label> <input type="text"
				class="form-control" id="formGroupExampleInput" name="address"
				placeholder="ex:-Kandy" required>
		</div>
		<!--Input Telephone Number -->
		<div class="form-group">
			<label for="exampleInputPassword1">Telephone Number</label> <input
				type="text" class="form-control" id="formGroupExampleInput"
				name="tno" placeholder="ex:-94702834234" Required pattern="[0-9]{11}">
		</div>

		<button type="submit" class="btn btn-primary">Add Supplier</button>

	</form>
</div>