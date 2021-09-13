<div class="row">
	<jsp:include page="../common/navbar.jsp">
		<jsp:param name="navs"
			value="View All Products,all.jsp_Add Products,add.jsp" />
	</jsp:include>
	<div class="col-10 my-auto">
		<div class="content">
			<form action="../../addProduct" method="post"
				enctype="multipart/form-data">
				<div class="row">
					<div class="col-4 mx-auto">
						<div class="text-center">
							<h2>Add a new product</h2>
						</div>
						<div class="mb-3">
							<label class="form-label">Product Name</label> <input
								name="pname" size="20" class="form-control" required/>
						</div>
						<div class="mb-3">
							<label class="form-label">Product Weight</label> <input
								name="pweight" size="2" type="number" min="1"
								class="form-control" required/>
						</div>
						<div class="mb-3">
							<label class="form-label">Product Price</label> <input
								name="pprice" size="10" type="number" min="1" class="form-control" required/>
						</div>
						<div class="mb-3">
							<label class="form-label">Product Image</label> <select
								name="image" required>
								<option value="sanstha">Sanstha</option>
								<option value="tokyo">tokyo</option>
								<option value="powertech">powertech</option>
								<option value="nippon">nippon</option>
							</select>
						</div>
						<div class="mb-3">
							<label class="form-label">Product Availability</label> <label
								class="switch"> <input type="checkbox"
								name="availablity" checked> <span
								class="slider round"></span>
							</label>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-primary ">Add</button>
						</div>
						<br> <br>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
