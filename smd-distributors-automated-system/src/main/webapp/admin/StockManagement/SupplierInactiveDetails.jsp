
<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors|Stock Management" /></jsp:include>
<body>
<!-- Import heder -->
	<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
	<div class="row">
		<div class="col-2">
		<!-- Import vertical navigation bar -->
			<jsp:include page="../../WEB-INF/views/stockM/stock_navi.jsp"></jsp:include>
		</div>
		<div class="col-10">
		<!-- Import Inactive Supplier table -->
			<jsp:include page="../../WEB-INF/views/stockM/SupplierInactive.jsp"></jsp:include>
		</div>
	</div>
	<!-- Import footer -->
	<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
