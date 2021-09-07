<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors/Delivery Management" /></jsp:include>
	<meta charset="ISO-8859-1">
</head>
<body>
	<jsp:include page="../../WEB-INF/views/common/header.jsp"></jsp:include>
	
	
	
<div class="pt-2">
	<center>
		<h5>Delivery Details</h5>
	</center>
</div>
<table class="table table-hover">

	<thead>
		<tr>

			<th scope="col">Delivery ID</th>
			<th scope="col">Route</th>
			<th scope="col">Date</th>
			<th scope="col">Status</th>
			<th scope="col">Order ID</th>
			<th scope="col">Customer ID</th>
			<th scope="col">Vehicle</th>
			<th scope="col"></th>
			
			

		</tr>
	</thead>
	<tbody>
		<c:forEach var="del" items="${deliveryDetails}">
			<form action=<%=request.getContextPath() + "/update"%> method="post">
			<tr>
				<td><input type="text" value="${del.delivryID}" name="did" class="form-control" id="formGroupExampleInput" readonly/></td>
				<td><c:out value="${del.route}" /></td>
				<td><c:out value="${del.date}" /></td>
				<td><input type="text" value="${del.status}" name="upStatus" class="form-control" id="formGroupExampleInput"/></td>
				<td><c:out value="${del.oID}" /></td>
				<td><c:out value="${del.cID}" /></td>
				<td><c:out value="${del.vehicle}" /></td>
				<td><input type="submit" name="uodate" value="Update" class="btn btn-primary"style="background-color:#fbda57; color:#000000"> </td>
			</tr>
			</form>
			
			<form  action=<%=request.getContextPath() + "/delete"%>  method="post">
			<tr>
				<td/><td/><td/><td/><td/><td/>
				<td><input type="text" value="${del.delivryID}" name="did" class="form-control" id="formGroupExampleInput" readonly/></td>
				<td><input type="submit" name="delete" value="Delete" class="btn btn-primary"style="background-color:#fbda57; color:#000000"> </td>
			</tr>
			</form>
		</c:forEach>

	</tbody>
</table>


		
	<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
	
</body>
</html>