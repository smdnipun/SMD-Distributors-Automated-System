<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="java.io.PrintWriter"%>
<%
if (request.getSession().getAttribute("Logged") != null) {
    //request.getSession().setAttribute("Logged", "Guest");
%>
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
		
	
	<table id="example" class="table display nowrap" style="width:100%">
	<thead class="thead-dark">
			<tr>
	
				<th scope="col">Delivery_ID</th>
				<th scope="col">Route</th>
				<th scope="col">Date</th>
				<th scope="col">Status</th>
				<th scope="col">Order_ID</th>
				<th scope="col">Customer_ID</th>
				<th scope="col">Vehicle</th>
				<th scope="col"></th>
				
				
	
			</tr>
		</thead>
		<tbody>
			<c:forEach var="del" items="${DeletedDeliveryDetails}">
				<tr>
					<td><c:out value="${del.delivryID}" /></td>
					<td><c:out value="${del.route}" /></td>
					<td><c:out value="${del.date}" /></td>
					<td><c:out value="${del.status}" /></td>
					<td><c:out value="${del.oID}" /></td>
					<td><c:out value="${del.cID}" /></td>
					<td><c:out value="${del.vehicle}" /></td>
				</tr>
				
			</c:forEach>
	
		</tbody>
	</table>
	
	</div>
	</div>
	
		<br/><br/>
		<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
		
</body>
</html>
<%
} else {
    PrintWriter redirect = response.getWriter();
    redirect.println("<script>");
    redirect.println("location='../../login.jsp'");//put the location from your jsp file
    redirect.println("</script>");
}
%>