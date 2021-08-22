<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.smd.model.Supplier"%><!--Import Supplier.class-->
<%@ page import="com.smd.service.SupplierDB"%><!-- Import Database connection of SupplierDB -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- create array to get data from database -->
<%
if (request.getSession().getAttribute("Logged") == null) {
	request.getSession().setAttribute("Logged", "Guest");
}

SupplierDB dbc = new SupplierDB();
Supplier[] newsupplier = (Supplier[]) dbc.getSupplierdetails();
request.setAttribute("data", newsupplier);
%>

<div class="col-7 justify-content-center">
	<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col">Supplier ID</th>
				<th scope="col">Supplier Name</th>
				<th scope="col">Address</th>
				<th scope="col">Telephone Number</th>
				<th scope="col"></th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${data}" var="Supplier">
			<tr>
				<th scope="row">1</th>
				<td><c:out value="${NewSupplier.getSupplierID}"/></td>
				<td><c:out value="${NewSupplier.getName}"/></td>
				<td><c:out value="${NewSupplier.getAddress}"/></td>
				<td><c:out value="${NewSupplier.getTno}"/></td>
				<td>
					<button type="button" class="btn btn-light">UPDATE</button>
					<button type="button" class="btn btn-light">Delete</button>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<button type="button" class="btn btn-light">GENERATE REPORT</button>
</div>
