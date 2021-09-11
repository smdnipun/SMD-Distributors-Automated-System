<%@ page import="java.io.PrintWriter"%>
<%
if (request.getSession().getAttribute("Logged") != null) {
	//request.getSession().setAttribute("Logged", "Guest");
%>

<jsp:include page="./WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors"/></jsp:include>
	
	<body>
		<jsp:include page="./WEB-INF/views/common/header.jsp"></jsp:include>
		<jsp:include page="./WEB-INF/views/productM/center.jsp"></jsp:include>
	</body>
	<script src="./js/backToTop.js"></script>
</html>

<%
} else {
	PrintWriter redirect = response.getWriter();
	redirect.println("<script>");
	redirect.println("location='./login.jsp'");
	redirect.println("</script>");
}
%>