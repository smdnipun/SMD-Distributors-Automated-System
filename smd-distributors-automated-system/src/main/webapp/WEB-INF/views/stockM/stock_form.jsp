<div class="col-4">
		
	<form action="../../StockUpdate" method="Post">
				<!-- 	<div class="form-group">
					<div class="dropdown show">
						<a
							class="btn btn-sm btn-light dropdown-toggle dropdown-toggle-split"
							href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" name="itemname"> Item Name </a>
		
						<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<a class="dropdown-item" href="#">Nipon</a> <a
								class="dropdown-item" href="#">Sanstha</a>
		
						</div>
					</div> -->
		<!-- Input Item Name -->
			<div class="form-group">
				<label for="exampleInputPassword1">Item Name</label> <input type="text"
					class="form-control" id="exampleInputPassword1" name="itemname" required>
			</div>
			<!-- Input Date -->
			<div class="form-group">
				<label for="exampleInputPassword1">Date</label> <input type="date"
					class="form-control" id="exampleInputPassword1" name="date" required >
			</div>
			<!-- Input Quantity -->
			<div class="form-group">
				<label for="exampleInputPassword1">Quntity</label> <input type="number"
					class="form-control" id="exampleInputPassword1" name="quntity" required>
			</div>
			<!-- Add Stock Submition button -->
			<div>
			<button name ="button" value="add" type="submit" name="id" class="btn btn-light">Add Stock</button>
			</div>
		</form>
</div>