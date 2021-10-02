<%@ page import="java.io.PrintWriter"%>
<%
if (request.getSession().getAttribute("Logged") != null) {
%>
<jsp:include page="WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors | Profile" /></jsp:include>
	
	<link rel="stylesheet" type="text/css" href=<%=request.getContextPath() + "/css/profile.css"%>>
	<link rel="stylesheet" href=<%=request.getContextPath() + "/css/order.css"%>>
<body>
	<script src=<%=request.getContextPath()+"/js/profileTable.js"%>></script>
	<jsp:include page="WEB-INF/views/common/header.jsp"></jsp:include>
	<jsp:include page="WEB-INF/views/customer/userProfile.jsp"></jsp:include>
	<jsp:include page="WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>
<%
} else {
	PrintWriter redirect = response.getWriter();
	redirect.println("<script>");
	redirect.println("location='./login.jsp'");
	redirect.println("</script>");
}
%>