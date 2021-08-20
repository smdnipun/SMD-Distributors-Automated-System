<%@ page import="com.smd.model.Payment"%><!--Import NewOrderCOnf.class-->
<%@ page import="com.smd.service.CreditSalesM"%><!-- Import Database connection of creditSales -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="col-9">
	<jsp:include page="centerNav.jsp"></jsp:include>
	<center>
		<h5>Customer Aged Recivable</h5>
	</center>

	<table class="table table-hover">

		<thead>
			<tr>

				<th scope="col">Customer</th>
				<th scope="col">Total Amount</th>
				<th scope="col">Paid Amount</th>
				<th scope="col">Balance</th>

			</tr>
		</thead>
		<tbody>
		
			<tr>

		<!--  	<td><c:out value="${Payment.getCusName()}" /></td>
				<td><c:out value="${Payment.getInvoiceID()}" /></td>
				<td><c:out value="${Payment.getDate()}" /></td>
				<td><c:out value="${Payment.getTotalAmount()}" /></td>
				<td><c:out value="${Payment.getBalance()}" /></td>-->

			</tr>
	

		</tbody>
	</table>
	<p align="right">
		<button type="button" class="btn btn-secondary"
			style="background-color: #b8b8b8">Generate Report</button>
	</p>
</div>
