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
<div>
	<jsp:include page="./supplierupnav.jsp"></jsp:include>
</div>
<div >
	<div class="d-flex justify-content-center">
		<h4>Supplier Details</h4>
	</div>
	<div class="col-7 justify-content-center">
		<table id="table" class="display nowrap" style="width: 100%">
			<thead>
				<tr>
					<th scope="col">Supplier ID</th>
					<th scope="col">Supplier Name</th>
					<th scope="col">Product Name</th>
					<th scope="col">Address</th>
					<th scope="col">Telephone Number</th>
					<th scope="col">Status</th>
					<th scope="col"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${supplierdata}" var="Supplier">
				<form action="../../SupplierUpdate" method="post">
						<tr>

							<td><input readonly type="text" name="supplierID"
								value="<c:out value="${Supplier.getSupplierID()}"/>"></td>
							<td><input type="text" name="sname"
								value="<c:out value="${Supplier.getSName()}"/>"></td>
								<td><input type="text" name="pname"
								value="<c:out value="${Supplier.getPName()}"/>"></td>
							<td><input type="text" name="address"
								value="<c:out value="${Supplier.getAddress()}"/>"></td>
							<td><input type="text" name="tno"
								value="<c:out value="${Supplier.getTno()}"/>"></td>
							<td><input type="text" name="tno"
								value="<c:out value="${Supplier.getStatus()}"/>"></td>


							<td>
								<button name="button" value="update" type="submit" name="id"
									class="btn btn-light"
									value="<c:out value= "${Supplier.getSupplierID()}"/>">UPDATE</button>

								<button name="button" value="delete" type="submit"
									class="btn btn-light"
									value="<c:out value= "${Supplier.getSupplierID()}"/>">Delete</button>
					</form>

					</td>

					</tr>

				</c:forEach>
			</tbody>
		</table>
		<button type="button" class="btn btn-light">GENERATE REPORT</button>
	</div>
</div>
