
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.smd.model.Stocksummary"%><!--Import Stocksummary.class-->
<%@ page import="com.smd.service.StockDB"%><!-- Import Database connection of StockDB -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- create array to get data from database -->
<%
if (request.getSession().getAttribute("Logged") == null) {
	request.getSession().setAttribute("Logged", "Guest");
}

StockDB dbc = new StockDB();
Stocksummary[] newstock = (Stocksummary[]) dbc.getStocksummary();
request.setAttribute("stocksum", newstock);
%>


<div  class="col-5 text-center align">
<div>
		<h4>Stock</h4>
	</div>
	<table class="table table-hover">
		
		<thead>
			<tr>
				<th style="width:10%" scope="col">Item Name</th>
				<th style="width:10%" scope="col">Total</th>
			</tr>
		</thead>
		<tbody>
		<!-- get the stock data from Stocksummary database table connection -->
		<c:forEach items="${stocksum}" var="Stocksummary">
			<tr>
					<td><c:out value="${Stocksummary.getName()}"/></td>
					<td><c:out value="${Stocksummary.getSum()}"/></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>