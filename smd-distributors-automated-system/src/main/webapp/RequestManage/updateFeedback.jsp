<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Update Feedback</title>
	<jsp:include page="../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/requesthome.css">
</head>
<body class="ubody">
	<jsp:include page="../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
<!-- get the details passed from parameter from the url of the requesthandlingAdminHome.jsp page -->
		<%
			String Feedback_ID = request.getParameter("Feedback_ID");
			String Cus_ID = request.getParameter("Cus_ID");
			String Date = request.getParameter("Date");
			String Type = request.getParameter("Type");
			String Message = request.getParameter("Message");
			String Rating = request.getParameter("Rating");
			String Status = request.getParameter("Status");
		%>
		<br>
		
		
		<div class="formcontent">
		<h5 align="center" class="capitalize">Update Feedback Details</h5> 
			<form action="../update" method="post" class="form">
				Feedback ID: 
				<input type="text" name="Feedback_ID" style="width:20%" value="<%= Feedback_ID %>" readonly><br><br>
				Customer ID:  <!-- paymentid is unique auto-incremented -->
				<input type="text" name="Cus_ID" style="width:20%" value="<%= Cus_ID %>" readonly><br><br>
				Date: 
				<input type="text" name="Date" style="width:20%" value="<%= Date %>" readonly><br><br>
				Type of the message:
				<input type="text" name="Type" style="width:20%" value="<%= Type %>" readonly><br><br>
				Message: 
				<input type="text" name="Message" style="width:40%" value="<%= Message %>" readonly><br><br>
				Rating: 
				<input type="text" name="Rating" style="width:20%" value="<%= Rating %>" readonly><br><br><br>
				Status: 
				<input type="text" name="Status" style="width:20%" value="<%= Status %>"><br><br><br>
				<input type="submit" name="submit" value="Update The Data">
			</form>
		</div>
		<br><br><br>
		<jsp:include page="../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>