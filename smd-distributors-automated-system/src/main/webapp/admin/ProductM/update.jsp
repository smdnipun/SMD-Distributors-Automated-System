<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
	<link rel="stylesheet"
	href=<%=request.getContextPath() + "/css/product.css"%>>
<body>
	<jsp:include page="../../WEB-INF/views/common/header.jsp"></jsp:include>
	<jsp:include page="../../WEB-INF/views/productM/update.jsp"></jsp:include>
	<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>