<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors | Payment History" /></jsp:include>
<link rel="stylesheet"
	href=<%=request.getContextPath() + "/css/table.css"%>>
</head>
<body>
	<script src=<%=request.getContextPath() + "/js/payTable.js"%>></script>
	<jsp:include page="../../WEB-INF/views/common/head.jsp"></jsp:include>
	<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
	<div class="row">
		<jsp:include
			page="../../WEB-INF/views/creditSales/creditNavigationBar.jsp"></jsp:include>
		<jsp:include
			page="../../WEB-INF/views/creditSales/paymentHistoryTable.jsp"></jsp:include>
	</div>
	<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>