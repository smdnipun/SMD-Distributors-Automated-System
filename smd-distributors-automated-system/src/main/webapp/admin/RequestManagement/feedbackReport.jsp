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
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
<script type="text/javascript">
			function generatePdf() {
				html2canvas($('#freport')[0], {
					onrendered : function(canvas) {
						var data = canvas.toDataURL();
						var docDefinition = {
							content : [ {
								image : data,
								width : 500
							} ]
						};
						pdfMake.createPdf(docDefinition).download(
								"Monthly Feedback Report.pdf");
					}
				});
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
							<th scope="col" class="text-center">FeedID</th><!-- feedbackid is unique auto-incremented -->
							<th scope="col" class="text-center">CusID</th> 
							<th scope="col" class="text-center">Email</th>
							<th scope="col" style="width: 30%" class="text-center">Date</th>
							<th scope="col" style="width: 30%" class="text-center">Message</th>
							<th scope="col" class="text-center">Status</th>
						</tr>	
					</thead>
					<tbody>
					
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
			<button id="form_button"onclick="generatePdf()" style="height: 20%">Print Report</button>
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