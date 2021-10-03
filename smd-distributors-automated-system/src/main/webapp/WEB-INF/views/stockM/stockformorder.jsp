<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.smd.model.Product"%><!--Import Product.class-->
<%@ page import="com.smd.service.ProductDB"%><!-- Import Database connection of ProductDB -->
<!--create array to get data from database-->
<%
ProductDB con = new ProductDB();
Product[] products = con.getAllProducts();
request.setAttribute("products", products);
%>
<!-- Stock order form -->
<div class="col-2">
<div>
	<h5>Release Stock</h5>
</div>
		
	<form action="../../StockAdding" method="Post">
			
		<!-- input Item name -->
			<div class="form-group">
						<label for="exampleInputEmail1">Product Name</label> <select
				name="itemname">
				<c:forEach items="${products}" var="product">
					<option value="${product.getName()}">${product.getName()}</option>
				</c:forEach>
			</select>
			</div>
			<!-- Input Date -->
			<div class="form-group">
				<label for="exampleInputPassword1">Date</label> <input type="date"
					class="form-control" id="exampleInputPassword1" name="date" Required>
			</div>
			<!-- Input Quantity -->
			<div class="form-group">
				<label for="exampleInputPassword1">Quntity</label> <input type="text"
					class="form-control" id="exampleInputPassword1" name="quntity" Required>
			</div>
			<div>
			<!-- release stock button -->
			<button name ="button" value="delete" type="submit" class="btn btn-light">Release Stock</button>
			</div>
		</form>
</div>