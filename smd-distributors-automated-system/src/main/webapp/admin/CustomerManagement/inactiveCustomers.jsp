<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors | Customer Management" /></jsp:include>
	<link rel="stylesheet" href=<%=request.getContextPath() + "/css/table.css"%>>

<body>
	<script src=<%=request.getContextPath()+"/js/table.js"%>></script>
	<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
	<jsp:include page="../../WEB-INF/views/customerAdmin/inactiveCus.jsp"></jsp:include>
	<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>