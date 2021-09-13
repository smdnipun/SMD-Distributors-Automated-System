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
	<meta charset="ISO-8859-1">
	<title>Delete Feedback</title>
	<jsp:include page="../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/requesthome.css">
</head>
<body class="dbody">
	<jsp:include page="../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
	<br>
	
		
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
		<h5 class="capitalize" align="center">Delete the record</h5>
		<form action="../deletefeedback" method="post" class="form">
			<%-- Feedback ID: <input type="text" name="Feedback_ID" value="<%= Feedback_ID %>" readonly> <br><br>
			Customer ID: <input type="text" name="Cus_ID" value="<%= Cus_ID %>" readonly> <br><br>
			Date:  <input type="text" name="Date" value="<%= Date %>" readonly> <br><br>
			Type of the message: <input type="text" name="Type" value="<%= Type %>" readonly> <br><br>
			Message:  <input type="text" name="Message" value="<%= Message %>" readonly> <br><br>
			Rating:  <input type="text" name="Rating" value="<%= Rating %>" readonly> <br><br>
			Status:  <input type="text" name="Status" value="<%= Status %>" readonly> <br><br> --%>
			<div class="form-group row">
    			<label for="feedbackid" class="col-sm-5 col-form-label">Feedback ID: </label>
    			<div class="col-sm-5">
      			<input type="text" readonly class="form-control-plaintext" name="Feedback_ID" value="<%= Feedback_ID %>">
			    </div>
			  </div>
			  <div class="form-group row">
    			<label for="feedbackid" class="col-sm-5 col-form-label">Customer ID: </label>
    			<div class="col-sm-5">
      			<input type="text" readonly class="form-control-plaintext" name="Cus_ID" value="<%= Cus_ID %>">
			    </div>
			  </div>
			  <div class="form-group row">
    			<label for="feedbackid" class="col-sm-5 col-form-label">Date: </label>
    			<div class="col-sm-5">
      			<input type="text" readonly class="form-control-plaintext" name="Date" value="<%= Date %>">
			    </div>
			  </div>
			  <div class="form-group row">
			  
    			<label for="feedbackid" class="col-sm-5 col-form-label">Type of the message: </label>
    			<div class="col-sm-5">
      			<input type="text" readonly class="form-control-plaintext" name="Type" value="<%= Type %>">
			    </div>
			  </div>
			  <div class="form-group row">
    			<label for="feedbackid" class="col-sm-5 col-form-label">Message: </label>
    			<div class="col-sm-5">
      			<input type="text" readonly class="form-control-plaintext" name="Message" value="<%= Message %>">
			    </div>
			  </div>
			  <div class="form-group row">
    			<label for="feedbackid" class="col-sm-5 col-form-label">Rating: </label>
    			<div class="col-sm-5">
      			<input type="text" readonly class="form-control-plaintext" name="Rating" value="<%= Rating %>">
			    </div>
			  </div>
			  <div class="form-group row">
    			<label for="feedbackid" class="col-sm-5 col-form-label">Status: </label>
    			<div class="col-sm-5">
      			<input type="text" readonly class="form-control-plaintext" name="Rating" value="<%= Status %>">
			    </div>
			  </div>
			  <br>
			 
			<input type="submit" name="submit" id="form_button" value="Delete The Data">
		</form>
		</div><br><br><br><br>
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