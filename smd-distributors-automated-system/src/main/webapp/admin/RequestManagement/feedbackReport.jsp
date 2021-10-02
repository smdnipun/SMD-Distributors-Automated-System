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
<script src="https://raw.githack.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js" ></script>
	<script type="text/javascript">
	function generatePdf(){
	var d = new Date();
	var y = d.getFullYear();

	var month = new Array();
	month[0] = "January";
	month[1] = "February";
	month[2] = "March";
	month[3] = "April";
	month[4] = "May";
	month[5] = "June";
	month[6] = "July";
	month[7] = "August";
	month[8] = "September";
	month[9] = "October";
	month[10] = "November";
	month[11] = "December";
	var n = month[d.getMonth()];

	var str = 'Monthly Feedback Report-'+y+"-"+n;
	const element=document.getElementById("freport");
	html2pdf().from(element).save(str);
	
	}
	</script>
	<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/requesthome.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/requestcustomer.css">
	<title>Feedback Report</title>
</head>
<body>
	<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include> 
	
	<div class="row">
		<jsp:include page="../../WEB-INF/views/Request/AdminRequestnavbar.jsp"></jsp:include> 
	
		<div class="col-9">
			<!--table to display report -->
			<div class="col-10" id="freport">
			<br><center><h5>Feedback Report</h5></center><br>
				<table class="table table-hover table table-sm table table-striped" style="width:100%">
				<!-- <table class="feedback"> -->
					<thead class="thead-dark">
						<tr>
							<th scope="col">Feedback ID</th>
							<th scope="col">Customer ID</th> <!-- feedbackid is unique auto-incremented -->
							<th scope="col">Email</th>
							<th scope="col">Date</th>
							<th scope="col">Message</th>
							<th scope="col">Status</th>
						</tr>	
					</thead>
					<tbody>
					
<!-- 					create a loop to display data in the table -->
<!-- 					items name should be the name you gave in the setattribute in the servlet -->
<%-- 					<c:forEach var="feedback" items="${feedbackdetails}"> --%>
					
<!-- 					assign values for the variables -->
<%-- 					<c:set var="Feedback_ID" value="${feedback.feedback_ID}"> </c:set> <!-- feedbackid is unique auto-incremented --> --%>
<%-- 					<c:set var="Cus_ID" value="${feedback.cus_ID}"> </c:set> <!-- customerid is unique auto-incremented --> --%>
<%-- 					<c:set var="Date" value="${feedback.date}"> </c:set> --%>
<%-- 					<c:set var="Message" value="${feedback.message}"> </c:set> --%>
<%-- 					<c:set var="Status" value="${feedback.status}"> </c:set> --%>
						
<!-- 						<tr> -->
<!-- 						print details inside the table -->
<%-- 							<td>${feedback.feedback_ID}</td> <!-- feedbackid is unique auto-incremented --> --%>
<%-- 							<td>${feedback.cus_ID}</td> <!-- customerid is unique auto-incremented --> --%>
<%-- 							<td>${feedback.date}</td> --%>
<%-- 							<td>${feedback.message}</td> --%>
<%-- 							<td>${feedback.status}</td> --%>
							
<!-- 						</tr> -->
<%-- 					</c:forEach> --%>
					
					
						<c:forEach var="feed" items="${feedbackdetails}">
				
							<tr>
								<td><c:out value="${feed.feedback_ID}" /></td>
								<td><c:out value="${feed.cus_ID}" /></td>
								<td><c:out value="${feed.email}" /></td>
								<td><c:out value="${feed.date}" /></td>
								<td><c:out value="${feed.message}"/></td>
								<td><c:out value="${feed.status}" /></td>
							</tr>
	
						</c:forEach> 
					
					</tbody>
				</table>
			</div>
	
			 <input type="submit" name="pdf" onclick="generatePdf()" value="Print Report" id="form_button" style="width: 20%; height: 15%" />
		
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