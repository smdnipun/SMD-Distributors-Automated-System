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

	<jsp:include page="../../WEB-INF/views/common/header.jsp"></jsp:include>
	
	<div class="row overflow-auto">
			<div class="col-2">
				<jsp:include page="../../WEB-INF/views/Delivery/DeliveryNavigationbar.jsp"></jsp:include>
			</div>
			<div class="col-10 pb-5">
				
				
				
				
				
				<h1>Unsuccess</h1>
							
				
				
		
				
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