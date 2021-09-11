<%@ page import="com.smd.model.Customer"%><!--Import NewOrderCOnf.class-->
<%@ page import="com.smd.service.CreditSalesM"%><!-- Import Database connection of creditSales -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!--checking user logged or not -->
<!-- creating array to get data from database -->
<%
if (request.getSession().getAttribute("Logged") == null) {
	request.getSession().setAttribute("Logged", "Guest");
}

CreditSalesM dbc = new CreditSalesM();
Customer[] customer = (Customer[]) dbc.getCustomrDetailstocredit();
request.setAttribute("data", customer);
%>

<div>
	<jsp:include page="centerNav.jsp"></jsp:include>
	<center>
		<h5>Customer Details</h5>
	</center>

	
	
	
	<table id="table" class="display nowrap table table-stripped table-bordered" style="width: 100%">
		<thead>

			<tr>
				<th>Customer ID</th>
				<th>Hardware Name</th>
				<th>Telephone</th>
				<th>Email Address</th>
				<th>Address</th>


			</tr>
		</thead>
		<tbody>
			<c:forEach items="${data}" var="Customer">
				<tr>
					<td><c:out value="${Customer.getCusID()}" /></td>
					<td><c:out value="${Customer.getHardwareName()}" /></td>
					<td><c:out value="${Customer.getPhoneNo()}" /></td>
					<td><c:out value="${Customer.getEmail() }"/></td>
					<td><c:out value="${Customer.getAddress()}" /></td>


				</tr>

			</c:forEach>
			<tr>
		</tbody>
	</table>
</div>

