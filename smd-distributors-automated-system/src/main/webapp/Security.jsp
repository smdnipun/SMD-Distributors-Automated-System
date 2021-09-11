<%@ page import="java.io.PrintWriter"%>
<%
if (request.getSession().getAttribute("Logged") != null) {
	//request.getSession().setAttribute("Logged", "Guest");
%>	
<jsp:include page="WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors | Account Settings" /></jsp:include>
<body>
	<script src=<%=request.getContextPath()+"/js/pwdValidation.js"%>></script>
	<jsp:include page="WEB-INF/views/common/header.jsp"></jsp:include>
	<jsp:include page="WEB-INF/views/customer/updatePwd.jsp"></jsp:include>
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