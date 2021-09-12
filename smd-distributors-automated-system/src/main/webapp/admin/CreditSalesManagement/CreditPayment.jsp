<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors | Payment" /></jsp:include>
<link rel="stylesheet"
	href=<%=request.getContextPath() + "/css/table.css"%>>
<body>
	<script src=<%=request.getContextPath() + "/js/payTable.js"%>></script>
	<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
	<div class="row">
		<jsp:include
			page="../../WEB-INF/views/creditSales/creditNavigationBar.jsp"></jsp:include>
		<div class="col-9">
			<jsp:include
				page="../../WEB-INF/views/creditSales/customerBalanceTableandForm.jsp"></jsp:include>
			<div class="row">
				<jsp:include page="../../WEB-INF/views/creditSales/paymentForm.jsp"></jsp:include>

			</div>
		</div>
	</div>

	<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>