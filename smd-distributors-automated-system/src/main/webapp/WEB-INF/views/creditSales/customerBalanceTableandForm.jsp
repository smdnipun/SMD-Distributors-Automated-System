<%@ page import="com.smd.model.Payment"%><!--Import NewOrderCOnf.class-->
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
Payment[] payments = (Payment[]) dbc.getPaymentdetails();
request.setAttribute("payments", payments);
%>
<jsp:include page="centerNav.jsp"></jsp:include>
<div class="pt-2">

	<center>
		<h5>Customer Balance</h5>
	</center>
</div>
<table id="customerDetails" class="display nowrap" style="width:100%">


	<thead>
		<tr>

			<th scope="col">Customer</th>
			<th scope="col">Invoice ID</th>
			<th scope="col">Date</th>
			<th scope="col">Product Code</th>
			<th scope="col">Quantity</th>
			<th scope="col">Total Amount</th>
			<th scope="col">Balance</th>

		</tr>
	</thead>
	<tbody>
		<c:forEach items="${payments}" var="Payment">
			<tr>


				<td><c:out value="${Payment.getCusName()}" /></td>
				<td><c:out value="${Payment.getInvoiceID()}" /></td>
				<td><c:out value="${Payment.getDate()}" /></td>
				<td><c:out value="${Payment.getProductCode()}" /></td>
				<td><c:out value="${Payment.getQuantity()}" /></td>
				<td><c:out value="${Payment.getTotalAmount()}" /></td>
				<td><c:out value="${Payment.getBalance()}" /></td>


			</tr>
		</c:forEach>

	</tbody>
</table>