<%@ page import="java.io.PrintWriter"%>
<%
if (request.getSession().getAttribute("Logged") != null) {
	//request.getSession().setAttribute("Logged", "Guest");
%>
<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors | Customer Management" /></jsp:include>
	<link rel="stylesheet" href=<%=request.getContextPath() + "/css/table.css"%>>
	<link rel="stylesheet" href=<%=request.getContextPath() + "/css/order.css"%>>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<body>
	<script src="../js/table.js"></script>
	<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
	<div class="row">
	<jsp:include page="../../WEB-INF/views/OrderM/adminOrderNavbar.jsp">
		<jsp:param name="navs" value="ttt,ffff ddddd,fff"  />
	</jsp:include>
	<jsp:include page="../../WEB-INF/views/OrderM/Adminview.jsp"></jsp:include>
	</div>
	<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>
<%
} else {
	PrintWriter redirect = response.getWriter();
	redirect.println("<script>");
	redirect.println("location='../../login.jsp'");
	redirect.println("</script>");
}
%>
