<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.smd.model.Supplier"%><!--Import Supplier.class-->
<%@ page import="com.smd.service.SupplierDB"%><!-- Import Database connection of SupplierDB -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--create array to get data from database-->
<%
if (request.getSession().getAttribute("Logged") == null) {
	request.getSession().setAttribute("Logged", "Guest");
}

SupplierDB dbc = new SupplierDB();
Supplier[] newsupplier = (Supplier[]) dbc.getAllSupplier();
request.setAttribute("supplierdata", newsupplier);
%>
<div>
	<!-- Import Horizontal navigation bar -->
	<jsp:include page="./stockreportupnav.jsp"></jsp:include>
</div>
<div>
	<div class="d-flex justify-content-center"></div>
	<center>
		<div class="col-7 justify-content-center">
			<table id="table" class="display nowrap" style="width: 100%">
				<thead>
					<tr>
						<td colspan=6 style="text-align: center">
							<h4>Supplier Details</h4>
						</td>
					</tr>
					<tr>
						<th scope="col">Supplier ID</th>
						<th scope="col">Supplier Name</th>
						<th scope="col">Product Name</th>
						<th scope="col">Address</th>
						<th scope="col">Telephone Number</th>
						<th scope="col">Status</th>
					</tr>
				</thead>
				<tbody>
					<!-- get the stock data from Stock database table connection -->
					<c:forEach items="${supplierdata}" var="Supplier">

						<tr>

							<td><c:out value="${Supplier.getSupplierID()}" /></td>
							<td><c:out value="${Supplier.getSName()}" /></td>
							<td><c:out value="${Supplier.getPName()}" /></td>
							<td><c:out value="${Supplier.getAddress()}" /></td>
							<td><c:out value="${Supplier.getTno()}" /></td>
							<td><c:out value="${Supplier.getStatus()}" /></td>
						</tr>

					</c:forEach>
				</tbody>
			</table>
			<button type="button" id="repgenerate" class="btn btn-light">GENERATE
				REPORT</button>
		</div>
		<center>
</div>
