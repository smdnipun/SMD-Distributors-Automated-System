<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.smd.model.Product"%><!--Import Product.class-->
<%@ page import="com.smd.service.ProductDB"%><!-- Import Database connection of ProductDB -->
<!--create array to get data from database-->
<%
ProductDB con = new ProductDB();
Product[] products = con.getAllProducts();
request.setAttribute("products", products);
%>
<div class="col-3">
<div>
<h5>Add Stock</h5>
</div>
		
	<form action="../../StockUpdate" method="Post">
				
		<!-- Input Item Name -->
			<div class="form-group">
				<label for="exampleInputEmail1">Item Name</label> <select
				name="itemname">
				<c:forEach items="${products}" var="product">
					<option value="${product.getName()}">${product.getName()}</option>
				</c:forEach>
			</select>
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