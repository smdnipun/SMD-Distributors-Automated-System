<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.LinkedList"%>
<%@ page import="com.smd.model.PaymentDetails"%>
<%@ page import="com.smd.service.CreditSalesM"%>

<div class="pt-2">
	<nav class="navbar navbar-expand-lg navbar-light"
		style="background-color: #d7d7d7;">
		<div class="container-fluid">
			<button class="navbar-toggler" data-bs-toggle="collapse"
				data-bs-target="#navbarTogglerDemo01"
				aria-controls="navbarTogglerDemo01" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarTogglerDemo01">

				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link"
						href="CustomerAged.jsp">Credit Sales</a></li>
					<li class="nav-item"><a class="nav-link"
						href="NewOrdersconfirmation.jsp">New Orders</a></li>
					<li class="nav-item"><a class="nav-link"
						href="CreditPayment.jsp">Payments</a></li>
					<li class="nav-item"><a class="nav-link"
						href="PaymentHistory.jsp">Payments History</a></li>

				</ul>
				<form action="../../PaymentSearch" class="d-flex" method="post">
					<input type="text" size="50" name="search" />
					<button type="submit" class="">
						<i class="bi bi-search"></i>
					</button>
				</form>
				<div>.
				<table id="customerDetails" class="display nowrap" style="width: 100%">
					<c:choose>
						<c:when test="${param.search==null}">
							<%
							CreditSalesM con = new CreditSalesM();
							PaymentDetails[] allPayments = con.getPaymentdetails();
							request.setAttribute("allPayments", allPayments);
							%>
							
								
								<thead>
									<tr>
										<th scope="col">Pay_ID</th>
										<th scope="col">Hardware Name</th>
										<th scope="col">Invoice ID</th>
										<th scope="col">Total Price</th>
										<th scope="col">Paid Amount</th>
										<th scope="col">Remaining Amount</th>


									</tr>
								</thead>
								<tbody>
									<c:forEach items="${allPayments}" var="paymentDetails">
										<td><c:out value="${PaymentDetails.getPaymentID()}" /></td>
										<td><c:out value="${PaymentDetails.getCusName()}" /></td>
										<td><c:out value="${PaymentDetails.getInvoiceID()}" /></td>
										<td><c:out value="${PaymentDetails.getTotalAmount()}" /></td>
										<td><c:out value="${PaymentDetails.getPaidAmount()}" /></td>
										<td><c:out value="${PaymentDetails.getBalance()}" /></td>
									</c:forEach>
						</c:when>
						<c:otherwise>
							<%
							CreditSalesM con = new CreditSalesM();
							PaymentDetails[] searchPay = con.search(request.getParameter("search"));
							request.setAttribute("searchData", searchPay);
							%>
							<c:forEach items="${searchData}" var="PaymentDetails">
								<b>jjjjj</b>
							</c:forEach>
						</c:otherwise>
					</c:choose>
					</table>
				</div>

			</div>
		</div>
	</nav>
</div>