<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.smd.model.NewOrdersConf"%><!--Import NewOrderCOnf.class-->
<%@ page import="com.smd.service.CreditSalesM"%><!-- Import Database connection of creditSales -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--checking user logged or not -->
<!-- creating array to get data from database -->
<%
if (request.getSession().getAttribute("Logged") == null) {
	request.getSession().setAttribute("Logged", "Guest");
}

CreditSalesM dbc = new CreditSalesM();
NewOrdersConf[] newOrders = (NewOrdersConf[]) dbc.getNewOrderDetails();
request.setAttribute("data", newOrders);
%>
<div class="col-9">
	<jsp:include page="centerNav.jsp"></jsp:include>
	<table class="table table-hover">

		<thead>
			<tr>

				<th scope="col">Date</th>
				<th scope="col">Customer</th>
				<th scope="col">Quantity</th>
				<th scope="col">Total Amount</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${data}" var="NewOrdersConf">
				<tr>

					<td><c:out value="${NewOrdersConf.getCustomer()}" /></td>
					<td><c:out value="${NewOrdersConf.getDate()}" /></td>
					<td><c:out value="${NewOrdersConf.getQuantity()}" /></td>
					<td><c:out value="${NewOrdersConf.getTotalPrice()}" /></td>
					<td><button type="button" class="btn btn-secondary"
							style="background-color: #b8c248">Customer Details</button> <br>
						<button type="button" class="btn btn-secondary"
							style="background-color: #c28f48">Accept</button> <br>
						<button type="button" class="btn btn-secondary"
							style="background-color: #9a4832">Decline</button></td>

				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<!--  Code Here -->

