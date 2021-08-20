<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Feedback</title>
<jsp:include page="../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
	<style>

.contt{
	background-color:#f0f5f5;
		width: 700px;
		border: 15px black;
		font: 16px;
		padding: 20px 12px 10px 20px;
		outline-style: double;
		outline-color: black;
		float:center;
		opacity:0.8;
		margin: 0 auto; 
		text-align: center;
	
}
</style>
</head>
<body>
	<jsp:include page="../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
	<br>
	
	<div class ="contt">
	<form action="view" method="post">
		<h4 align="center" class="capitalize" >Request Management</h4> <br>
		<p>When a customer submit a feedback all the details are saved in Feedback table.</p>
		<p>Request Management Admin can Search feedbacks.</p>
		<p>Request Management Admin can Update/Delete these details.</p>
		<p>Request Management Admin can Genarate Reports.</p>
		<input type="submit" name="viewbtn" value="View Feedback Details">
	</form>
	</div>
	<jsp:include page="../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>