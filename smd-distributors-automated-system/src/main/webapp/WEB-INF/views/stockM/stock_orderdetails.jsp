<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.smd.model.Stockorder"%><!--Import Stockorder.class-->
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
<!-- upper navigation bar -->
<div>
<jsp:include page="./stockupnav.jsp"></jsp:include>
</div>
<!-- stockorder Table -->
<div class="col-8 text-center align">
	<table class="table table-hover">
	
		<thead>
			<tr><!-- Table headers -->
				<th scope="col">Order ID</th>
				<th scope="col">Quantity</th>
				<th scope="col">Date</th>
				<th scope="col">Product Name</th>
			</tr>
		</thead>
		<tbody>
		<!-- Pass the data from DB -->
		<c:forEach items="${stockorderdata}" var="Stockorder">
			<tr>
			
					<td><c:out value="${Stockorder.getoID()}"/></td>
					<td><c:out value="${Stockorder.getQty()}"/></td>
					<td><c:out value="${Stockorder.getOdate()}"/></td>
					<td><c:out value="${Stockorder.getpName()}"/></td>
				
			</tr>
			</c:forEach>
		</tbody>
	</table>
</div>