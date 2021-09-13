<%@ page import="com.smd.model.Employee"%><!--Import NewOrderCOnf.class-->
<%@ page import="com.smd.service.CreditSalesM"%><!-- Import Database connection of creditSales -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--checking user logged or not -->
<!-- creating array to get data from database -->
<%
if (request.getSession().getAttribute("Logged") == null) {
	request.getSession().setAttribute("Logged", "Guest");
}

CreditSalesM dbc = new CreditSalesM();
Employee[] cashCal = (Employee[]) dbc.getCashCalactorsDetails();
request.setAttribute("data", cashCal);
%>

<div>
	<!-- Horizontal navigation bar -->
	<jsp:include page="CenterNavWithoutSearch.jsp"></jsp:include>
	<center>
		<h5>Cash Collector</h5>
	</center>
	<!--Creating cash collector table -->
	<!-- <table id="customerDetails" class="display nowrap" style="width: 100%"> -->
	<table id="payTable" class="display nowrap" style="width: 100%">


		<thead>

			<tr>
				<th scope="col">EmployeeID</th>
				<th scope="col">Name</th>
				<th scope="col">Phone No</th>
				<th scope="col">NIC No</th>
				<th scope="col">Email address</th>
				<th scope="col">Address</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${data}" var="Employee">
				<tr>
					<td><c:out value="${Employee.getEmp_ID()}" /></td>
					<td><c:out
							value="${Employee.getFirst_Name()} ${Employee.getLast_Name()}" /></td>
					<td><c:out value="${Employee.getPhone()}" /></td>
					<td><c:out value="${Employee.getNIC()}" /></td>
					<td><c:out value="${Employee.getEmail()}" /></td>
					<td><c:out value="${Employee.getAddress()}" /></td>

				</tr>

			</c:forEach>
			<tr>
		</tbody>
	</table>
</div>
