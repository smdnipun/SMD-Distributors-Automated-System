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

<title>Delete delivery</title>
</head>
<body>
	
	<jsp:include page="../../WEB-INF/views/common/head.jsp"></jsp:include>
		<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
		
		<div class="row">
			<jsp:include
				page="../../WEB-INF/views/Delivery/DeliveryNavigationbar.jsp"></jsp:include>
			<div class="col-9">
			
			<center>
			<h5>Delete Delivery Details</h5>
		</center>
	
	
	
	<%
		
			String id = request.getParameter("ddid");
			String route = request.getParameter("droute");
			String date = request.getParameter("ddate");
			String status = request.getParameter("dstatus");
			String oid = request.getParameter("doid");
			String cid = request.getParameter("dcid");
			String vehicle = request.getParameter("vehicle");
		
		%>
		

		
		
		
<div class="col-8">
	<form action=<%=request.getContextPath() + "/deleted"%> method="post">
	
<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Delivery ID</label>
  <input type="text" class="form-control" id="formGroupExampleInput2" value="<%=id %>" name="did" readonly>
</div>	
<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Route</label>
  <input type="text" class="form-control" id="formGroupExampleInput2" value="<%=route %>" name="route" readonly>
</div>
<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Date</label>
  <input type="text" class="form-control" id="formGroupExampleInput" value="<%=date %>" name="date" readonly>
</div>
<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Status</label>
  <input type="text" class="form-control" id="formGroupExampleInput" value="<%=status %>" name="status" readonly>
</div>
<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Order ID</label>
  <input type="text" class="form-control" id="formGroupExampleInput" value="<%=oid %>"  name="oid" readonly>
</div>
<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Customer ID</label>
  <input type="text" class="form-control" id="formGroupExampleInput2" value="<%=cid %>" name="cid" readonly>
</div>
<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Vehicle</label>
  <input type="text" class="form-control" id="formGroupExampleInput2" value="<%= vehicle %>" name="vehicle" readonly>
</div>

<input type="submit" name="delete" value="Delete" class="btn btn-primary"style="background-color:#fbda57; color:#000000"> 
	
</form>
	</div>

	



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