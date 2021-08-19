<jsp:include page="WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors | Login" />
</jsp:include>
<link rel="stylesheet" href=<%=request.getContextPath() + "/css/login.css"%>>
<body>
	<jsp:include page="WEB-INF/views/customer/loginBody.jsp"></jsp:include>
</body>
</html>