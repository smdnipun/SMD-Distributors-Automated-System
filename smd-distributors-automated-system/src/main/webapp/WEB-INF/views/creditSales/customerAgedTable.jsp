<%@ page import="com.smd.model.CustomerAgedRecivable"%><!--Import NewOrderCOnf.class-->
<%@ page import="com.smd.service.CreditSalesM"%><!-- Import Database connection of creditSales -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href=<%=request.getContextPath() + "/css/table.css"%>>
<script src=<%=request.getContextPath()+"/js/table.js"%>></script>

<!--checking user logged or not -->
<!-- creating array to get data from database -->
<%
if (request.getSession().getAttribute("Logged") == null) {
	request.getSession().setAttribute("Logged", "Guest");
}

CreditSalesM dbc = new CreditSalesM();
CustomerAgedRecivable[] customerAged = (CustomerAgedRecivable[]) dbc.getCreditDetails();
request.setAttribute("data", customerAged);
%>

<div class="col-9">
	<jsp:include page="centerNav.jsp"></jsp:include>
	<center>
		<h5>Customer Aged Recivable</h5>
	</center>

	<table id="customerDetails" class="display nowrap" style="width:100%">

		<thead>
		
			<tr>
				<th scope="col">CustomerID</th>
				<th scope="col">Customer</th>
				<th scope="col">Total Amount</th>
				<th scope="col">Paid Amount</th>
				<th scope="col">Balance</th>

			</tr>
		</thead>
		<tbody>
		<c:forEach items="${data}" var="CustomerAgedRecivable">
		<tr>
			<td><c:out value="${CustomerAgedRecivable.getCus_ID()}" /></td>
		  	<td><c:out value="${CustomerAgedRecivable.getHardwareName()}" /></td>
				<td><c:out value="${CustomerAgedRecivable.getTotalAmount()}" /></td>
				<td><c:out value="${CustomerAgedRecivable.getPaidAmount()}" /></td>
				<td><c:out value="${CustomerAgedRecivable.getBalance()}" /></td>

			</tr>
		
			</c:forEach>
			<tr>
		</tbody>
	</table>
	<p align="right">
		<button type="button" class="btn btn-secondary"
			style="background-color: #b8b8b8">Generate Report</button>
	</p>
</div>
