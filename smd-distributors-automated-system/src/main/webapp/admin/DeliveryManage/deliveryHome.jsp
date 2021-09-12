<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
				
				
				
				
				
				<form action=<%=request.getContextPath() + "/viewd"%> method="post">
				
					<input type="submit" name="view" value="View Deliveries">
				</form>
				
				<form action=<%=request.getContextPath() + "/odr"%> method="post">
				
					<input type="submit" name="odr" value="Make Delivery">
				</form>
				
				<form action=<%=request.getContextPath() + "/viewveh"%> method="post">
				
					<input type="submit" name="viewveh" value="Vehicle Details">
				</form>
				
							
				
				
		
				
			</div>
	</div>
		
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