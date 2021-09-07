<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.smd.model.Stockorder"%><!--Import Stock.class-->
<%@ page import="com.smd.service.StockDB"%><!-- Import Database connection of StockDB -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- create array to get data from database -->
<%
if (request.getSession().getAttribute("Logged") == null) {
	request.getSession().setAttribute("Logged", "Guest");
}

StockDB dbc = new StockDB();
Stockorder[] newstock = (Stockorder[]) dbc.getStockorder();
request.setAttribute("stockorderdata", newstock);
%>


<div class="col-8 text-center align">
	<table class="table table-hover">
	
		<thead>
			<tr>
				<th scope="col">Order ID</th>
				<th scope="col">Quantity</th>
				<th scope="col">Date</th>
				<th scope="col">Product Name</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${stockorderdata}" var="Stockorder">
			<tr>
			
					<td><c:out value="${Stockorder.getoID()}"/></td>
					<td><c:out value="${Stockorder.getQty()}"/></td>
					<td>"<c:out value="${Stockorder.getOdate()}"/></td>
					<td><c:out value="${Stockorder.getpName()}"/></td>
				
			</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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


<div  class="col-5 text-center align">
	<table class="table table-hover">
		
		<thead>
			<tr>
				<th style="width:10%" scope="col">Stock ID</th>
				<th style="width:10%" scope="col">Item Name</th>
				<th style="width:10%" scope="col">Quntity</th>
				<th style="width:10%" scope="col">Date</th>
				<th style="width:10%"scope="col">Status</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${stockdata}" var="Stock">
			<tr>
			
					<td><c:out value="${Stock.getStockID()}"/>"</td>
					<td><input type="text" name="stockID"
						value="<c:out value="${Stock.getStockID()}"/>"></td>
					<td><input type="text" name="itemname"
						value="<c:out value="${Stock.getItemName()}"/>"></td>
					<td><input type="text" name="quntity"
						value="<c:out value="${Stock.getQuntity()}"/>"></td>
					<td><c:out value="${Stock.getDate()}"/>"</td>
					<td><input type="text" name="status"
						value="<c:out value="${Stock.getStatus()}"/>"></td>
				
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div> --%>