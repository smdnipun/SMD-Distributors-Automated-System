<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.smd.model.NewOrdersConf"%><!--Import NewOrderCOnf.class-->
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

CreditSalesM dbc = new CreditSalesM();
NewOrdersConf[] newOrders = (NewOrdersConf[]) dbc.getNewOrderDetails();
request.setAttribute("data", newOrders);
%>
<div class="col-9">
	<jsp:include page="CenterNavWithoutSearch.jsp"></jsp:include>
	<table id="customerDetails" class="display nowrap" style="width: 100%">

		<thead>
			<tr>
				<th scope="col">Invoice ID</th>
				<th scope="col">Date</th>
				<th scope="col">Customer ID</th>
				<th scope="col">Customer</th>
				<th scope="col">Quantity</th>
				<th scope="col">Total Amount</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${data}" var="NewOrdersConf">
				<tr>
					<form action="../../AcceptOrders" method="post">
						<td><input type="text" name="id" 
							value="<c:out value="${NewOrdersConf.getOrderID()}" />"readonly></td>
						<td><c:out value="${NewOrdersConf.getDate()}" /></td>
						<td><input type="text" name="id1" value=" <c:out value="${NewOrdersConf.getCusID()}" />"readonly></td>
						<td><c:out value="${NewOrdersConf.getCustomer()}" /></td>
						<td><c:out value="${NewOrdersConf.getQuantity()}" /></td>
						<td><c:out value="${NewOrdersConf.getTotalPrice()}" /></td>


						<td><a href="CustomerPayPrev.jsp?credit=${NewOrdersConf.getCusID()}" class ="btn btn-secondary" name="id1" value="${NewOrdersConf.getCusID()}"
							 role="button"
							style="background-color: #b8c248">Customer Details</a><br>
							<button type="submit" class="btn btn-secondary"
								style="background-color: #c28f48" name="button" value="accept" />Accept
							</button> <br>

							<button type="submit" class="btn btn-secondary"
								style="background-color: #9a4832" name="button" value="decline">Decline</button>
					</form>
					</td>

				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>



