<div class="row">
	<jsp:include page="../common/navbar.jsp">
		<jsp:param name="navs"
			value="View All Products,all.jsp_ddddd,fff_ddddd,fff" />
	</jsp:include>
	<div class="col-10 my-auto">
		<form action="../../addProduct" method="post"
			enctype="multipart/form-data">
			<div class="row">
				<div class="col-4 text-center mx-auto">
					<div class="text-center">
						<h2>Add a new product</h2>
					</div>
					<div class="form-inline">
						<label>Product Name</label> <input name="pname" size="20" />
					</div>
					<div class="form-inline">
						<label>Product Weight</label> <input name="pweight" size="2"
							type="number" />
					</div>
					<div class="form-inline">
						<label>Product Price</label> <input name="pprice" size="10"
							type="number" />
					</div>
					<div class="form-inline">
						<label>Product Availability</label> <label class="switch">
							<input type="checkbox" name="availablity" checked> <span
							class="slider round"></span>
						</label>
					</div>
					<div class="form-inline">
						<label>Product Availability</label> <label class="switch">
							<input type="checkbox" name="availablity" checked> <span
							class="slider round"></span>
						</label>
					</div>
					<button type="submit">Add</button>
					<br>
					<br>
				</div>
			</div>
		</form>
	</div>
</div>
