<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Delete Feedback</title>
	<jsp:include page="../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/requesthome.css">
</head>
<body class="dbody">
	<jsp:include page="../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
	<br>
	<h5 class="capitalize" align="center">Delete the record</h5> <br>
		
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
		<div class="formcontent">
		<form action="../delete" method="post" class="form">
			Feedback ID: <input type="text" name="Feedback_ID" value="<%= Feedback_ID %>" readonly> <br><br>
			Customer ID: <input type="text" name="Cus_ID" value="<%= Cus_ID %>" readonly> <br><br>
			Date:  <input type="text" name="Date" value="<%= Date %>" readonly> <br><br>
			Type of the message: <input type="text" name="Type" value="<%= Type %>" readonly> <br><br>
			Message:  <input type="text" name="Message" value="<%= Message %>" readonly> <br><br>
			Rating:  <input type="text" name="Rating" value="<%= Rating %>" readonly> <br><br>
			Status:  <input type="text" name="Status" value="<%= Status %>"> <br><br>
			<input type="submit" name="submit" value="Delete The Data">
		</form>
		</div><br><br><br><br>
	<jsp:include page="../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>