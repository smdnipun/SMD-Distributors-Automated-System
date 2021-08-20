<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Delete Feedback</title>
	<jsp:include page="../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
<style>
body {
  background-image: url('images/delete.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
		background-size: cover;
}
.idper{
box-sizing: border-box;
  border: 2px black;
  border-radius: 4px;
  background-color:#75a3a3;
  color: black;
}
h1{color:black;}

</style>
</head>
<body>
	<jsp:include page="../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
	<br>
	<h5>Delete the record</h5> <br>
		
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
		
		<form action="delete" method="post">
			<input type="text" name="Feedback_ID" value="<%= Feedback_ID %>" readonly>
			<input type="text" name="Cus_ID" value="<%= Cus_ID %>" readonly>
			<input type="text" name="Date" value="<%= Date %>" readonly>
			<input type="text" name="Type" value="<%= Type %>" readonly>
			<input type="text" name="Message" value="<%= Message %>" readonly>
			<input type="text" name="Rating" value="<%= Rating %>" readonly>
			<input type="text" name="Status" value="<%= Status %>">
			<input type="submit" name="submit" value="Delete The Data">
		</form>
		
	<jsp:include page="../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>