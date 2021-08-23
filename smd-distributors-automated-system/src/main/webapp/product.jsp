<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.smd.model.Product"%>
<%@ page import="com.smd.service.ProductDB"%>
<jsp:include page="./WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
<body>
	<jsp:include page="./WEB-INF/views/common/header.jsp"></jsp:include>
	<jsp:include page="./WEB-INF/views/common/navbar.jsp">
		<jsp:param name="navs" value="ttt,ffff ddddd,fff" />
	</jsp:include>
	<%
	if (request.getParameter("product") != null) {
		ProductDB con = new ProductDB();
		Product product = con.getProductById(Integer.parseInt(request.getParameter("product")));
		request.setAttribute("product", product);
	%>
		<a href="update.jsp?product=${product.getProductID()}"><c:out
				value="${product.getName()}"></c:out></a>
	<%} %>
	<jsp:include page="./WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>

