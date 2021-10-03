<%@ page import="com.smd.model.Payment"%><!--Import NewOrderCOnf.class-->
<%@ page import="com.smd.service.CreditSalesM"%><!-- Import Database connection of creditSales -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href=<%=request.getContextPath() + "/css/table.css"%>>
<script src=<%=request.getContextPath() + "/js/table.js"%>></script>
<!--checking user logged or not -->
<!-- creating array to get data from database -->
<%
if (request.getSession().getAttribute("Logged") == null) {
	request.getSession().setAttribute("Logged", "Guest");
}
//Creating a connection to the database and fetching all the customerage details .
CreditSalesM dbc = new CreditSalesM();
Payment[] payments = (Payment[]) dbc.getPayment();
request.setAttribute("payments", payments);
%>


<div class="col-9">
	<!-- Horizontal navigation bar -->
	<jsp:include page="CenterNavWithoutSearch.jsp"></jsp:include>
	<center>
		<h5>Customer Payments</h5>
	</center>

	<!--Creating payment history table-->
	<form>
		<input type="month" name="month" min="2021-01"></input>
		<button type="submit">Submit</button>
	</form>
	<table id="payTable" class="table" style="width: 100%">

		<thead class="thead-dark">
			<tr>

				<th scope="col">Payment ID</th>
				<th scope="col">Amount</th>
				<th scope="col">Date</th>
				<th scope="col">Customer ID</th>
				<th scope="col">Invoice ID</th>
				<th scope="col">Employee ID</th>

			</tr>
		</thead>
		<tbody>

			<c:choose>
				<c:when test="${param.month!=null}">
					<!-- If the "month" URL parameter is not null it fill fetch the data related to the specified data on the URL parameters-->
					<%
					CreditSalesM reportCon = new CreditSalesM();
					Payment[] report = reportCon.getReportP(request.getParameter("month"));
					request.setAttribute("report", report);
					%>
					<c:forEach items="${report}" var="Payment">
						<tr>
							<td><c:out value="${Payment.getPaymentID()}" /></td>
							<td><c:out value="${Payment.getPaidAmount()}" /></td>
							<td><c:out value="${Payment.getDate()}" /></td>
							<td><c:out value="${Payment.getCusID()}" /></td>
							<td><c:out value="${Payment.getInvoiceID()}" /></td>
							<td><c:out value="${Payment.getEmpID()}" /></td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<!--Show all fetched data -->
					<%
					CreditSalesM reportCon = new CreditSalesM();
					Payment[] report = reportCon.getReportP("0");
					request.setAttribute("report", report);
					%>
					<c:forEach items="${report}" var="Payment">
						<tr>
							<td><c:out value="${Payment.getPaymentID()}" /></td>
							<td><c:out value="${Payment.getPaidAmount()}" /></td>
							<td><c:out value="${Payment.getDate()}" /></td>
							<td><c:out value="${Payment.getCusID()}" /></td>
							<td><c:out value="${Payment.getInvoiceID()}" /></td>
							<td><c:out value="${Payment.getEmpID()}" /></td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>


		</tbody>
	</table>
	<p align="right">
		<!--Button to generate report-->
		<button type="button" id="genRep" class="btn btn-secondary"
			style="background-color: #b8b8b8">Generate Report</button>
	</p>
	<br> <br> <br>
</div>

