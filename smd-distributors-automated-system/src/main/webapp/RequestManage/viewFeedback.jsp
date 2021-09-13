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
	<meta charset="ISO-8859-1">
	<title>View Feedback</title>
	<jsp:include page="../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/requesthome.css">
</head>
<body class="vbody">
	<jsp:include page="../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
	<br><br><br>
	
	<div class ="vcontt">
	
		<form action="${pageContext.request.contextPath}/viewfeedback" method="post">
			<h4 align="center" class="capitalize" >Request Management</h4> <br>
			<p>When a customer submit a feedback all the details are saved in Feedback table.</p>
			<p>Request Management Admin can Search feedbacks according to the date.</p>
			<p>Request Management Admin can Update/Delete these details.</p>
			<p>Request Management Admin can Genarate Reports for ratings.</p>
			<input type="submit" name="viewbtn" value="View Feedback Details">
		</form>
	</div>
	<br><br><br><br><br><br><br><br><br>
	<jsp:include page="../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>
<%
} else {
    PrintWriter redirect = response.getWriter();
    redirect.println("<script>");
    redirect.println("location='../login.jsp'");//put the location from your jsp file
    redirect.println("</script>");
}
%>