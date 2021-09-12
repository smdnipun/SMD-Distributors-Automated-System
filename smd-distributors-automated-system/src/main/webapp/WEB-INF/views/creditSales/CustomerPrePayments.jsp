<%@ page import="com.smd.model.Order"%><!--Import NewOrderCOnf.class-->
<%@ page import="com.smd.service.CreditSalesM"%><!-- Import Database connection of creditSales -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--checking user logged or not -->
<!-- creating array to get data from database -->
<!--creating parameter to get Id from table -->
<%
if (request.getParameter("credit") != null) {
	CreditSalesM con = new CreditSalesM();
	Order[] order = con.getCustomerById(Integer.parseInt(request.getParameter("credit")));
	request.setAttribute("data", order);
%>
<div>
	<!-- Horizontal navigation bar -->
	<jsp:include page="CenterNavWithoutSearch.jsp"></jsp:include>
	<center>
		<h5>Customer prevoius payments and due amounts</h5>
	</center>
	<!--Creating CustomerPre Payment-->
	<!-- <table id="customerDetails"  style="width: 100%"> -->
	<table id="table" class="display nowrap" style="width: 100%">


		<thead>

			<tr>
				<th scope="col">Invoice ID</th>
				<th scope="col">Customer ID</th>
				<th scope="col">Order date</th>
				<th scope="col">Order Status</th>
				<th scope="col">Total Amount</th>
				<th scope="col">Paid Amount</th>
				<th scope="col">Remaining Amount</th>
				<th scope="col">Qty</th>
				<th scope="col">Product ID</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${data}" var="order">
				<tr>
					<td><c:out value="${order.getOID()}" /></td>
					<td><c:out value="${order.getCID()}" /></td>
					<td><c:out value="${order.getODATE()}" /></td>
					<td><c:out value="${order.getOSTATE()}" /></td>
					<td><c:out value="${order.getTPRICE()}" /></td>
					<td><c:out value="${order.getPAMOUNT()}" /></td>
					<td><c:out value="${order.getRAMOUNT()}" /></td>
					<td><c:out value="${order.getQTY()}" /></td>
					<td><c:out value="${order.getPID()}" /></td>


				</tr>
			</c:forEach>
			<tr>
		</tbody>
	</table>
</div>
<%
}
%>