<jsp:include page="WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors | Register" />
</jsp:include>
<link rel="stylesheet" href=<%=request.getContextPath() + "/css/login.css"%>>
<body>
	<script src="js/RegisterUser.js"></script>
	<script src=<%=request.getContextPath()+"/js/pwdValidation.js"%>></script>
	<jsp:include page="WEB-INF/views/common/registerBody.jsp"></jsp:include>
</body>
</html>