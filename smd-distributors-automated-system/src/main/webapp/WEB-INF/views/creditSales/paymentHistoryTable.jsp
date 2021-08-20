<%@ page import="com.smd.model.Payment"%><!--Import NewOrderCOnf.class-->
<%@ page import="com.smd.service.CreditSalesM"%><!-- Import Database connection of creditSales -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--checking user logged or not -->
<!-- creating array to get data from database -->

<div class="col-9">
	<jsp:include page="centerNav.jsp"></jsp:include>
	<center>
		<h5>Customer Payments</h5>
	</center>

	<table class="table table-hover">

		<thead>
			<tr>

				<th scope="col">Payment ID</th>
				<th scope="col">Customer</th>
				<th scope="col">Invoice No</th>
				<th scope="col">Date</th>
				<th scope="col">Total Amount</th>
				<th scope="col">Paid Amount</th>
				<th scope="col">Balance</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${data}" var="Payment">
			<tr>
				
				<td><c:out value="${Payment.getPaymentID()}" /></td>
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
	<p align="right">
		<button type="button" class="btn btn-secondary"
			style="background-color: #b8b8b8">Generate Report</button>
	</p>
</div>
