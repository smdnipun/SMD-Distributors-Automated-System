<%@ page import="com.smd.model.PaymentDetails"%><!--Import NewOrderCOnf.class-->
<%@ page import="com.smd.service.CreditSalesM"%><!-- Import Database connection of creditSales -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--checking user logged or not -->
<!-- creating array to get data from database -->
<%
if (request.getSession().getAttribute("Logged") == null) {
	request.getSession().setAttribute("Logged", "Guest");
}

CreditSalesM dbc = new CreditSalesM();
PaymentDetails[] payments = (PaymentDetails[]) dbc.getPaymentdetails();
request.setAttribute("data", payments);
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
			<th scope="col">Pay_ID</th>
			<th scope="col">Hardware Name</th>
			<th scope="col">Customer ID</th>
			<th scope="col">Invoice ID</th>
			<th scope="col">Total Price</th>
			<th scope="col">Paid Amount</th>
			<th scope="col">Remaining Amount</th>
			

		</tr>
	</thead>
	<tbody>
		<c:forEach items="${data}" var="PaymentDetails">
			<tr>


				<td><c:out value="${PaymentDetails.getPaymentID()}" /></td>
				<td><c:out value="${PaymentDetails.getCusName()}" /></td>
				<td><c:out value="${PaymentDetails.getCusID()}" /></td>
				<td><c:out value="${PaymentDetails.getInvoiceID()}" /></td>
				<td><c:out value="${PaymentDetails.getTotalAmount()}" /></td>
				<td><c:out value="${PaymentDeetails.getPaidAmount()}" /></td>
				<td><c:out value="${PaymentDetails.getBalance()}" /></td>
				


			</tr>
		</c:forEach>

	</tbody>
</table>