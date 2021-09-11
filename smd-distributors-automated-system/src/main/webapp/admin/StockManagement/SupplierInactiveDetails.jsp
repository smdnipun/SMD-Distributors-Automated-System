
<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors|Stock Management" /></jsp:include>
<body>
	<jsp:include page="../../WEB-INF/views/common/header.jsp"></jsp:include>
	<div class="row">
		<div class="col-2">
			<jsp:include page="../../WEB-INF/views/stockM/stock_navi.jsp"></jsp:include>
		</div>
		<div class="col-10">
			<jsp:include page="../../WEB-INF/views/stockM/SupplierInactive.jsp"></jsp:include>
		</div>
	</div>
	<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
