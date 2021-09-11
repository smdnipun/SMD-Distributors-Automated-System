<%@ page import="com.smd.model.CustomerAgedRecivable"%><!--Import NewOrderCOnf.class-->
<%@ page import="com.smd.service.CreditSalesM"%><!-- Import Database connection of creditSales -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--checking user logged or not -->
<!-- creating array to get data from database -->
<%
if (request.getSession().getAttribute("Logged") == null) {
	request.getSession().setAttribute("Logged", "Guest");
}

CreditSalesM dbc = new CreditSalesM();
CustomerAgedRecivable[] customerAgedRecivable = dbc.getCreditAgedDetails();
request.setAttribute("data", customerAgedRecivable);
%>
<jsp:include page="CenterNavWithoutSearch.jsp"></jsp:include>
<div class="pt-2">

	<center>
		<h5>Customer Balance</h5>
	</center>
</div>
<div>
	<table id="payTable" class="display nowrap" style="width: 100%">



		<thead>

			<tr>
				<th scope="col">CustomerID</th>
				<th scope="col">Hardware Name</th>
				<th scope="col">Invoice ID</th>
				<th scope="col">Total Amount</th>
				<th scope="col">Paid Amount</th>
				<th scope="col">Remaining Amount</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${data}" var="CustomerAgedRecivable">
				<tr>
					<td><c:out value="${CustomerAgedRecivable.getCus_ID()}" /></td>
					<td><c:out value="${CustomerAgedRecivable.getHardwareName()}" /></td>
					<td><c:out value="${CustomerAgedRecivable.getInvoiceID()}" /></td>
					<td><c:out value="${CustomerAgedRecivable.getTotalAmount()}" /></td>
					<td><c:out value="${CustomerAgedRecivable.getPaidAmount()}" /></td>
					<td><c:out value="${CustomerAgedRecivable.getBalance()}" /></td>

				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>