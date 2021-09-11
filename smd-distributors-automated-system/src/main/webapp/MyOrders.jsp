<jsp:include page="./WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
	<link rel="stylesheet" href=<%=request.getContextPath() + "/css/order.css"%>>
<body>
	<jsp:include page="./WEB-INF/views/common/header.jsp"></jsp:include>
	<div class="row">
	<jsp:include page="./WEB-INF/views/OrderM/cusOrderNavbar.jsp">
		<jsp:param name="navs" value="ttt,ffff ddddd,fff"  />
	</jsp:include>
	<jsp:include page="./WEB-INF/views/OrderM/MyOrderBody.jsp"></jsp:include>
	</div>
	<jsp:include page="./WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>