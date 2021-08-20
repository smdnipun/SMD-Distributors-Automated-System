<%@ page import="com.smd.model."%><!--Import NewOrderCOnf.class-->
<%@ page import="com.smd.service.CreditSalesM"%><!-- Import Database connection of creditSales -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="centerNav.jsp"></jsp:include>
<div class="pt-2">
	<center>
		<h5>Customer Balance</h5>
	</center>
</div>
<table class="table table-hover">

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
		<tr>
		
				
				<td><c:out value="${Payment.getCusName()}" /></td>
				<td><c:out value="${Payment.getInvoiceID()}" /></td>
				<td><c:out value="${Payment.getDate()}" /></td>
				<td><c:out value="${Payment.getProductCode()}" /></td>
				<td><c:out value="${Payment.getQuantity()}" /></td>
				<td><c:out value="${Payment.getTotalAmount()}" /></td>
				<td><c:out value="${Payment.getBalance()}" /></td>k</td>
			
			
		</tr>
		
	</tbody>
</table>