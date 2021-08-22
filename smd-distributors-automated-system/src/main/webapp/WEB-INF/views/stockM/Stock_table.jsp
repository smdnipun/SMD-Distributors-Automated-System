
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.smd.model.Stock"%><!--Import Stock.class-->
<%@ page import="com.smd.service.StockDB"%><!-- Import Database connection of StockDB -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- create array to get data from database -->
<%
if (request.getSession().getAttribute("Logged") == null) {
	request.getSession().setAttribute("Logged", "Guest");
}

StockDB dbc = new StockDB();
Stock[] newstock = (Stock[]) dbc.getStockdetails();
request.setAttribute("data", newstock);
%>


<div class="col-8 text-center align">
	<table class="table table-hover">
		<caption>List of users</caption>
		<thead>
			<tr>
				<th scope="col">Stock ID</th>
				<th scope="col">Item Name</th>
				<th scope="col">Quntity</th>
				<th scope="col">date</th>
				<th scope="col"></th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${data}" var="Supplier">
			<tr>
				<th scope="row">1</th>
				<td><c:out value="${NewStock.getStockID}"/></td>
				<td><c:out value="${NewStock.getItemName}"/></td>
				<td><c:out value="${NewStock.getQuntity}"/></td>
				<td><c:out value="${NewStock.getDate}"/></td>
				<td>
				<button type="button" class="btn btn-light">UPDATE</button>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>