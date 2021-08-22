
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
request.setAttribute("stockdata", newstock);
%>


<div class="col-8 text-center align">
	<table class="table table-hover">
		
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
		<c:forEach items="${stockdata}" var="Stock">
			<tr>
			
							<th scope="row">1</th>
			<td><input type="text" name="name"
						value="<c:out value="${Stock.getStockID()}"/>"></td>
					<td><input type="text" name="name"
						value="<c:out value="${Stock.getItemName()}"/>"></td>
					<td><input type="text" name="name"
						value="<c:out value="${Stock.getQuntity()}"/>"></td>
					<td><input type="text" name="name"
						value="<c:out value="${Stock.getDate()}"/>"></td>
				<%-- <th scope="row">1</th>
				<td><c:out value="${Stock.getStockID()}"/></td>
				<td><c:out value="${Stock.getItemName()}"/></td>
				<td><c:out value="${Stock.getQuntity()}"/></td>
				<td><c:out value="${Stock.getDate()}"/></td> --%>
				<td>
				<button type="button" class="btn btn-light">UPDATE</button>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>