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
	<!-- Horizontal navigation bar -->
	<jsp:include page="centerNav.jsp"></jsp:include>
	<center>
		<h5>Customer Details</h5>
	</center>


	<!--Creating Customerdetailscredit table-->

	<table id="payTable" class="table" style="width: 100%">
	
	<c:choose>
			<c:when test="${param.search==null}">
				<%
				CreditSalesM con = new CreditSalesM();
				Customer[] allPayments = con.getCustomrDetailstocredit();
				request.setAttribute("allPayments", allPayments);
				%>
	
		<thead class="thead-dark">

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
					<td><c:out value="${Customer.getEmail() }" /></td>
					<td><c:out value="${Customer.getAddress()}" /></td>


				</tr>

			</c:forEach>
			<tr>
		</tbody>
		</c:when>
		<c:otherwise>
		<%
				CreditSalesM con = new CreditSalesM();
				Customer[] searchPay = con.search(request.getParameter("search"));
				request.setAttribute("searchData", searchPay);
				%>
				<c:forEach items="${data}" var="Customer">
		<thead class="thead-dark">

			<tr>
				<th>Customer ID</th>
				<th>Hardware Name</th>
				<th>Telephone</th>
				<th>Email Address</th>
				<th>Address</th>


			</tr>
		</thead>
		<tbody>
			
				<tr>
					<td><c:out value="${Customer.getCusID()}" /></td>
					<td><c:out value="${Customer.getHardwareName()}" /></td>
					<td><c:out value="${Customer.getPhoneNo()}" /></td>
					<td><c:out value="${Customer.getEmail() }" /></td>
					<td><c:out value="${Customer.getAddress()}" /></td>


				</tr>

			
			<tr>
		</tbody>
	</c:forEach>
	</c:otherwise>
	</c:choose>
		
	</table>
</div>

