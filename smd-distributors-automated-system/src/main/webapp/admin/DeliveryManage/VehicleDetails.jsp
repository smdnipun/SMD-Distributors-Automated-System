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
			<h5>Vehicle Details</h5>
		</center>
		
	
	<table class="table table-hover">
	
		<thead>
			<tr>
	
				<th scope="col">Vehicle Number</th>
				<th scope="col">Insurence_Exp</th>
				<th scope="col">Licence_Exp</th>
				<th scope="col">Status</th>
				<th scope="col">Supported_Weight</th>
				<th scope="col">Vehicle_Type</th>
				<th scope="col"></th>
				
				
	
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="veh" items="${vehicleDetails}">
				<tr>
					<td><input type="text" value="${veh.getVehicleNum()}" name="did" class="form-control" readonly/></td>
					<td><c:out value="${veh.getInsurenceExp()}" /></td>
					<td><c:out value="${veh.getLicenceExp()}" /></td>
					<td><input type="text" value="${veh.getStatus()}" name="upStatus" class="form-control" /></td>
					<td><c:out value="${veh.getWeight()}" /></td>
					<td><c:out value="${veh.getType()}" /></td>
					<td><input type="submit" name="uodate" value="Update" class="btn btn-primary"style="background-color:#fbda57; color:#000000"> </td>
				</tr>

				
				
			</c:forEach>
	
		</tbody>
	</table>
	
	
	</div>
	</div>
	
			
		<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
		
</body>
</html>