<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.LinkedList"%>
<%@ page import="com.smd.model.Product"%>
<%@ page import="com.smd.service.ProductDB"%>
<%
ProductDB con = new ProductDB();
Product[] allProducts = con.getAllProducts();
request.setAttribute("allProducts", allProducts);
%>

<div class="row">
	<jsp:include page="../common/navbar.jsp">
		<jsp:param name="navs"
			value="View All Products,all.jsp_Add Products,add.jsp_Reports,report.jsp" />
	</jsp:include>
	<div class="col-10">
		<form>
			<label for="month">Select Month:</label> <select name="month">
				<option value="0">All months</option>
				<option value="1">January</option>
				<option value="2">February</option>
				<option value="3">March</option>
				<option value="4">April</option>
				<option value="5">May</option>
				<option value="6">June</option>
				<option value="7">July</option>
				<option value="8">August</option>
				<option value="9">September</option>
				<option value="10">October</option>
				<option value="11">November</option>
				<option value="12">December</option>
			</select> <label for="product">Select Product:</label> <select name="product">
				<option value="0">All products</option>
				<c:forEach items="${allProducts}" var="product">
					<option value="<c:out value="${product.getName()}"></c:out>">${product.getName()}</option>
				</c:forEach>
			</select>
			<button type="submit">Submit</button>
		</form>
		<table class="table" id="tblCustomers">
			<tr>
				<th>Product Name</th>
				<th>Customer Name</th>
				<th>Quantity</th>
				<th>Total Price</th>
			</tr>
			<tr>
				<td>10</td>
				<td>10</td>
				<td>10</td>
				<td>10</td>
			</tr>
			<tr>
				<th colspan="3" style="text-align:center;">Total Amount:</th>
				<th>Rs.100000</th>
			</tr>
		</table>
		<button id="btnExport">test</button>
	</div>
</div>