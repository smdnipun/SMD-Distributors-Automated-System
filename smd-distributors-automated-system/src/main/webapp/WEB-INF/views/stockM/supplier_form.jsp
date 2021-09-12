<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.smd.model.Product"%>
<%@ page import="com.smd.service.ProductDB"%>
<%
ProductDB con = new ProductDB();
Product[] products = con.getAllProducts();
request.setAttribute("products", products);
%>
<div class="col-3 justify-content-center">
	<form action="../../SupplierAdding" method="Post">
		<div class="form-group">
			<label for="exampleInputEmail1">Supplier Name</label> <input
				type="text" class="form-control" id="formGroupExampleInput"
				name="sname" required>
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Product Name</label> <select
				name="pname">
				<c:forEach items="${products}" var="product">
					<option value="${product.getName()}">${product.getName()}</option>
				</c:forEach>
			</select>
			<!--<input type="text"
				class="form-control" id="formGroupExampleInput" name="pname" required>-->
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Address</label> <input type="text"
				class="form-control" id="formGroupExampleInput" name="address"
				required>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Telephone Number</label> <input
				type="text" class="form-control" id="formGroupExampleInput"
				name="tno" Required pattern="[0-9]{11}">
		</div>

		<button type="submit" class="btn btn-primary">Submit</button>

	</form>
</div>