<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.smd.model.Stock"%><!--Import Stock.class-->
<%@ page import="com.smd.service.StockDB"%><!-- Import Database connection of StockDB -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.smd.model.Product"%><!--Import product.class-->
<%@ page import="com.smd.service.ProductDB"%><!-- Import Database connection of ProductDB -->

<!-- create array to get data from database and check the user already loged the system -->
<%
if (request.getSession().getAttribute("Logged") == null) {
	request.getSession().setAttribute("Logged", "Guest");
}
//Creating a connection to the database and fetching all the products and saving them in the request attribute so they can be filled in the drop down menu.
ProductDB con = new ProductDB();
Product[] allProducts = con.getAllProducts();
request.setAttribute("allProducts", allProducts);
%>

<div>
	<!-- Import Horizontal navigation bar -->
	<jsp:include page="./stockreportupnav.jsp"></jsp:include>
</div>
<center>
	<div class="col-7 text-center align">
		<div class="d-flex justify-content-center"></div>
		<form>
			<label for="stock">Select Product:</label> <select name="product">
				<option value="0">All products</option>
				<!-- Getting data from the saved request attribute and filling to the drop down menu -->
				<c:forEach items="${allProducts}" var="product">
					<option value="<c:out value="${product.getName()}"></c:out>">${product.getName()}</option>
				</c:forEach>
			</select> <input type="month" name="month" min="2021-01"></input>
			<button type="submit">Submit</button>
		</form>

		<table id="stock" class="display nowrap" style="width: 90%">

			<thead>
				<tr>
					<td colspan=5 style="text-align: center">
						<h4>Stock Details</h4>
					</td>
				</tr>
				<tr>
					<th style="width: 10%" scope="col">Stock ID</th>
					<th style="width: 10%" scope="col">Item Name</th>
					<th style="width: 10%" scope="col">Quntity</th>
					<th style="width: 10%" scope="col">Date</th>
					<th style="width: 10%" scope="col">Status</th>
				</tr>
			</thead>

			<tbody>
				<!-- get the stock data from Stock database table connection -->
				<tr>
					<c:choose>
						<c:when test="${param.month!=null}">
							<!-- If the "month" URL parameter is not null it fill fetch the data related to the specified data on the URL parameters-->
							<%
							StockDB reportCon = new StockDB();
							Stock[] report = reportCon.getAllStockdetails(request.getParameter("month"), request.getParameter("product"));
							request.setAttribute("report", report);// setting the data to the request attribute
							%>
							<c:forEach items="${report}" var="Stock">
								<tr>
									<td><c:out value="${Stock.getStockID()}" /></td>
									<td><c:out value="${Stock.getItemName()}" /></td>
									<td><c:out value="${Stock.getQuntity()}" /></td>
									<td><c:out value="${Stock.getDate()}" /></td>
									<td><c:out value="${Stock.getStatus()}" /></td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<!-- If the "month" take user input and it fill fetch the data related to the specified data on the URL parameters-->
							<%
							StockDB reportCon = new StockDB();
							Stock[] report = reportCon.getAllStockdetails("0", "0");

							request.setAttribute("report", report);
							%>
							<c:forEach items="${report}" var="Stock">
								<tr>
									<td><c:out value="${Stock.getStockID()}" /></td>
									<td><c:out value="${Stock.getItemName()}" /></td>
									<td><c:out value="${Stock.getQuntity()}" /></td>
									<td><c:out value="${Stock.getDate()}" /></td>
									<td><c:out value="${Stock.getStatus()}" /></td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</tr>
			</tbody>
		</table>
		<button type="button" id="repgenerate1" class="btn btn-light">GENERATE
			REPORT</button>
	</div>
	<center>