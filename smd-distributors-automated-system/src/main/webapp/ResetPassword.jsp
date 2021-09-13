<jsp:include page="WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors | Reset Password" />
</jsp:include>
<link rel="stylesheet" href=<%=request.getContextPath() + "/css/login.css"%>>
<body>
	<script src="./js/pwdValidation.js"></script>
	<jsp:include page="WEB-INF/views/common/ResetBody.jsp"></jsp:include>
</body>
</html>