<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<form action="../updatefeedback" method="post" class="form">
			
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
			
			
				<%-- Feedback ID: 
				<input class="form-control-plaintext" type="text" name="Feedback_ID" style="width:20%" value="<%= Feedback_ID %>" readonly><br>
				Customer ID:  <!-- paymentid is unique auto-incremented -->
				<input class="form-control-plaintext" type="text" name="Cus_ID" style="width:20%" value="<%= Cus_ID %>" readonly><br>
				Date: 
				<input class="form-control-plaintext" type="text" name="Date" style="width:50%" value="<%= Date %>" readonly><br>
				Type of the message:
				<input class="form-control-plaintext" type="text" name="Type" style="width:20%" value="<%= Type %>" readonly><br>
				Message: 
				<input class="form-control-plaintext" type="text" name="Message" style="width:50%" value="<%= Message %>" readonly><br>
				Rating: 
				<input class="form-control-plaintext" type="text" name="Rating" style="width:20%" value="<%= Rating %>" readonly><br> --%>
				
				
				<label for="Status" class="col-sm-6 col-form-label">Status:</label>
 	 				<select name="Status" id="Status">
					    <option name="Status" value="<%= Status %>">Completed</option>
					    <option name="Status" value="<%= Status %>">Pending</option>
					    <option name="Status" value="<%= Status %>">Searching</option>
					    <option name="Status" value="<%= Status %>">Thankyou</option>
  					</select><br><br>
				<%-- Status: 
				<input type="text" name="Status" style="width:20%" value="<%= Status %>"><br><br><br> --%>
				<input type="submit" name="submit" value="Update The Data">
				
			</form>
		</div>
		<br><br><br>
		<jsp:include page="../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>