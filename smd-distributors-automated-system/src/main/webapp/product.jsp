<jsp:include page="./WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
<body>
	<jsp:include page="./WEB-INF/views/common/header.jsp"></jsp:include>
	<%
	String[] k = { "ddd" };
	session.setAttribute("name", 
			"k");
	%>
	<jsp:include page="./WEB-INF/views/common/navbar.jsp"></jsp:include>
	<jsp:include page="./WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>