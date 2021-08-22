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
Supplier[] newsupplier = (Supplier[]) dbc.getSupplierdetails();
request.setAttribute("supplierdata", newsupplier);
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
			<c:forEach items="${supplierdata}" var="Supplier">
				<!-- <form action="updateitem" method="post"> -->
				<tr>
					<th scope="row">1</th>
			<td><input type="text" name="name"
						value="<c:out value="${Supplier.getSupplierID()}"/>"></td>
					<td><input type="text" name="name"
						value="<c:out value="${Supplier.getName()}"/>"></td>
					<td><input type="text" name="name"
						value="<c:out value="${Supplier.getAddress()}"/>"></td>
					<td><input type="text" name="name"
						value="<c:out value="${Supplier.getTno()}"/>"></td>
		 <%-- 	<td><c:out value="${Supplier.getSupplierID()}"/></td> 	
			<td><c:out value="${Supplier.getName()}"/></td>
			<td><c:out value="${Supplier.getAddress()}"/></td>
			<td><c:out value="${Supplier.getTno()}"/></td>  --%>

					<td>
					<button type="button" class="btn btn-light">UPDATE</button>
				<!-- </form> -->
					<!-- <form action="SupplierDelete" method="post"> -->
					<button type="button" class="btn btn-light">Delete</button>
					<!-- </form>-->
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<button type="button" class="btn btn-light">GENERATE REPORT</button>
</div>
