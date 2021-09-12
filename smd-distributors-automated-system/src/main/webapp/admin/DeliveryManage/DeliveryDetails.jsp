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
	
	
	
	
	<jsp:include page="../../WEB-INF/views/common/head.jsp"></jsp:include>
		<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
		
		<div class="row">
			<jsp:include
				page="../../WEB-INF/views/Delivery/DeliveryNavigationbar.jsp"></jsp:include>
			<div class="col-9">
	
		<center>
			<h5>Delivery Details</h5>
		</center>
		
	
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
				<form action=<%=request.getContextPath() + "/updated"%> method="post">
				<tr>
					<td><input type="text" value="${del.delivryID}" name="did" class="form-control" readonly/></td>
					<td><c:out value="${del.route}" /></td>
					<td><c:out value="${del.date}" /></td>
					<td><input type="text" value="${del.status}" name="upStatus" class="form-control" /></td>
					<td><c:out value="${del.oID}" /></td>
					<td><c:out value="${del.cID}" /></td>
					<td><c:out value="${del.vehicle}" /></td>
					<td><input type="submit" name="uodate" value="Update" class="btn btn-primary"style="background-color:#fbda57; color:#000000"> </td>
				</tr>
				</form>
				
				<form  action=<%=request.getContextPath() + "/deleted"%>  method="post">
				<tr>
					<td/><td/><td/><td/><td/><td/>
					<td><input type="text" value="${del.delivryID}" name="did" class="form-control" id="formGroupExampleInput" readonly/></td>
					<td><input type="submit" name="delete" value="Delete" class="btn btn-primary"style="background-color:#fbda57; color:#000000"> </td>
				</tr>
				</form>
			</c:forEach>
	
		</tbody>
	</table>
	
	<div style="padding:100px; align:center" class="col-4">
	
	
	
	
	
	
	<form action=<%=request.getContextPath() + "/dreport"%> method="post">
	
	<div class="mb-4">
				<label for="formGroupExampleInput" class="form-label">Date</label>
				<input type="date" name="rdate" aria-describedby="" class="form-control" id="formGroupExampleInput">
	</div>
	<button type="submit" name="report" class="btn btn-primary"style="background-color:#fbda57; color:#000000">Generate Report </button>
	
	</form>
	
	</div>
	
	</div>
	</div>
	
			
		<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
		
</body>
</html>