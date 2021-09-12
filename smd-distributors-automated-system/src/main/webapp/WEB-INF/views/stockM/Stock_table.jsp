
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.smd.model.Stock"%><!--Import Stock.class-->
<%@ page import="com.smd.service.StockDB"%><!-- Import Database connection of StockDB -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- create array to get data from database and check the user already loged the system -->
<%
if (request.getSession().getAttribute("Logged") == null) {
	request.getSession().setAttribute("Logged", "Guest");
}

StockDB dbc = new StockDB();
Stock[] newstock = (Stock[]) dbc.getStockdetails();
request.setAttribute("stockdata", newstock);
%>

<div>
<!-- Import Horizontal navigation bar -->
<jsp:include page="./stockupnav.jsp"></jsp:include>
</div>
<div class="col-5 text-center align">
	<div class="d-flex justify-content-center">
		<h4>Stock Details</h4>
	</div>
	<table id="stock" class="display nowrap" style="width: 90%">

		<thead>
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
			<c:forEach items="${stockdata}" var="Stock">
				<tr>

					<td><c:out value="${Stock.getStockID()}" /></td>
					<td><c:out value="${Stock.getItemName()}"/></td>
					<td><c:out value="${Stock.getQuntity()}"/></td>
					<td><c:out value="${Stock.getDate()}" /></td>
					<td><c:out value="${Stock.getStatus()}"/></td>

				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
