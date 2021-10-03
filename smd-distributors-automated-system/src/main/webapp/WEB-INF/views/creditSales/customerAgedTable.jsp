<%@ page import="com.smd.model.PaymentDetails"%><!--Import NewOrderCOnf.class-->
<%@ page import="com.smd.service.CreditSalesM"%><!-- Import Database connection of creditSales -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--checking user logged or not -->
<!-- creating array to get data from database -->
<%
if (request.getSession().getAttribute("Logged") == null) {
	request.getSession().setAttribute("Logged", "Guest");
}
//Creating a connection to the database and fetching all the customerage details .
CreditSalesM cdbc = new CreditSalesM();
PaymentDetails[] customerAged = (PaymentDetails[]) cdbc.getPaymentdetails();
request.setAttribute("data", customerAged);
%>

<div class="col-9">

	<!-- Horizontal navigation bar -->
	<jsp:include page="CenterNavWithoutSearch.jsp"></jsp:include>
	<center>
		<h5>Customer Aged Recivable</h5>

	</center>
	<!--Creating customerage table-->


	<form>
		<!-- get the month -->
		<input type="month" name="month" min="2021-01"></input>
		<!-- get the status -->
		<select name="status">
			<option value="0"></option>
			<option value="Paid">Paid</option>
		</select>
		<button type="submit">Submit</button>

	</form>

	<table id="customerDetails" class="table" style="width: 100%">

		<thead class="thead-dark">
			<tr>

				<th scope="col">Hardware Name</th>
				<th scope="col">Invoice ID</th>
				<th scope="col">Total Price</th>
				<th scope="col">Paid Amount</th>
				<th scope="col">Remaining Amount</th>
				<th scope="col">Status</th>
				<th scope="col">Date</th>


			</tr>
		</thead>
		<tbody>

			<c:choose>
				<c:when test="${param.month!=null||param.status!=null}">
					<!-- If the "month" URL parameter is not null it fill fetch the data related to the specified data on the URL parameters-->
					<%
					CreditSalesM reportCon = new CreditSalesM();
					PaymentDetails[] report = reportCon.getReport(request.getParameter("month"), request.getParameter("status"));
					request.setAttribute("report", report);
					%>
					<c:forEach items="${report}" var="PaymentDetails">
						<tr>
							<td><c:out value="${PaymentDetails.getCusName()}" /></td>
							<td><c:out value="${PaymentDetails.getInvoiceID()}" /></td>
							<td><c:out value="${PaymentDetails.getTotalAmount()}" /></td>
							<td><c:out value="${PaymentDetails.getPaidAmount()}" /></td>
							<td><c:out value="${PaymentDetails.getBalance()}" /></td>
							<td><c:out value="${PaymentDetails.getStatus()}" /></td>
							<td><c:out value="${PaymentDetails.getDate()}" /></td>

						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<!--Show all fetched data -->
					<%
					CreditSalesM reportCon = new CreditSalesM();
					PaymentDetails[] report = reportCon.getReport("0", "0");
					request.setAttribute("report", report);
					%>
					<c:forEach items="${report}" var="PaymentDetails">
						<tr>
							<td><c:out value="${PaymentDetails.getCusName()}" /></td>
							<td><c:out value="${PaymentDetails.getInvoiceID()}" /></td>
							<td><c:out value="${PaymentDetails.getTotalAmount()}" /></td>
							<td><c:out value="${PaymentDetails.getPaidAmount()}" /></td>
							<td><c:out value="${PaymentDetails.getBalance()}" /></td>
							<td><c:out value="${PaymentDetails.getStatus()}" /></td>
							<td><c:out value="${PaymentDetails.getDate()}" /></td>

						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>

		</tbody>

	</table>

	<!--Button to generate report-->
	
	<p align="right">
		<button id="print" class="btn btn-secondary"
			style="background-color: #b8b8b8">Generate Report</button>
	</p>
</div>
