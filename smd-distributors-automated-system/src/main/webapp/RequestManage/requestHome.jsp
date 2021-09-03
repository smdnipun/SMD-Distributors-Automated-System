<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
	<meta charset="ISO-8859-1">
	 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/requesthome.css">
	<title>Admin Home Page</title>
</head>
<body class="hbody">
	<jsp:include page="../WEB-INF/views/common/adminHeader.jsp"></jsp:include> 
	
	<h5 align="center" class="capitalize" >Request Management</h5>
			<!--table to display data -->
			<table class="feedback">
				<tr>
					<th>Feedback ID</th>
					<th>Customer ID</th> <!-- paymentid is unique auto-incremented -->
					<th>Date</th>
					<th>Type</th>
					<th>Message</th>
					<th>Rating</th>
					<th>Status</th>
					<th colspan="2" style="text-align: center;">Action</th>
				</tr>	
			
					<!-- create a loop to display data in the table -->
					<!-- items name should be the name you gave in the setattribute in the servlet -->
					<c:forEach var="feedback" items="${feedbackdetails}">
					
					<!-- assign values for the variables -->
					<c:set var="Feedback_ID" value="${feedback.feedback_ID}"> </c:set> <!-- feedbackid is unique auto-incremented -->
					<c:set var="Cus_ID" value="${feedback.cus_ID}"> </c:set> <!-- customerid is unique auto-incremented -->
					<c:set var="Date" value="${feedback.date}"> </c:set>
					<c:set var="Type" value="${feedback.type}"> </c:set>
					<c:set var="Message" value="${feedback.message}"> </c:set>
					<c:set var="Rating" value="${feedback.rating}"> </c:set>
					<c:set var="Status" value="${feedback.status}"> </c:set>
						
						<tr>
						<!-- print details inside the table -->
							<td>${feedback.feedback_ID}</td> <!-- feedbackid is unique auto-incremented -->
							<td>${feedback.cus_ID}</td> <!-- customerid is unique auto-incremented -->
							<td>${feedback.date}</td>
							<td>${feedback.type}</td>
							<td>${feedback.message}</td>
							<td>${feedback.rating}</td>
							<td>${feedback.status}</td>
							
							<td>
								<!-- set the page that need to be navigated when updating as the value -->
								<c:url value="RequestManage/updateFeedback.jsp" var="feedbackupdate">
				
									<!-- data to take to the navigated page -->
									<c:param name="Feedback_ID" value="${Feedback_ID}"></c:param> <!-- feedbackid is unique auto-incremented -->
									<c:param name="Cus_ID" value="${Cus_ID}"></c:param> <!-- customerid is unique auto-incremented -->
									<c:param name="Date" value="${Date}"></c:param>
									<c:param name="Type" value="${Type}"></c:param>
									<c:param name="Message" value="${Message}"></c:param>
									<c:param name="Rating" value="${Rating}"></c:param>
									<c:param name="Status" value="${Status}"></c:param>
							
								</c:url>
						
								<a href="${feedbackupdate}"> <!-- pass the variable name -->
									<input type="button" name="update" value="Update">
								</a>
							</td>
								
							<td>
								<!-- set the page that need to be navigated when deleting as the value -->
								<c:url value="RequestManage/deleteFeedback.jsp" var="feedbackdelete">
									
									<!-- data to take to the navigated page -->
									<c:param name="Feedback_ID" value="${Feedback_ID}"></c:param> <!-- feedbackid is unique auto-incremented -->
									<c:param name="Cus_ID" value="${Cus_ID}"></c:param> <!-- customerid is unique auto-incremented -->
									<c:param name="Date" value="${Date}"></c:param>
									<c:param name="Type" value="${Type}"></c:param>
									<c:param name="Message" value="${Message}"></c:param>
									<c:param name="Rating" value="${Rating}"></c:param>
									<c:param name="Status" value="${Status}"></c:param>
						
								</c:url>
						
								<a href="${feedbackdelete}"> <!-- pass the variable name -->
									<input type="button" name="delete" value="Delete">
								</a>
							</td>
					</tr>	
				</c:forEach>
			</table>
	<jsp:include page="../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>