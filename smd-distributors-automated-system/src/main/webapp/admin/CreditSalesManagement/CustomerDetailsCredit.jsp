<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors | Customer Details" /></jsp:include>
	<link rel="stylesheet" href=<%=request.getContextPath() + "/css/table.css"%>>	
<body>
<script src=<%=request.getContextPath() + "/js/table.js"%>></script>
	
	<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
	<div class="row">
		<jsp:include
			page="../../WEB-INF/views/creditSales/creditNavigationBar.jsp"></jsp:include>
		<div class="col-9">
			
			<jsp:include
				page="../../WEB-INF/views/creditSales/CustomerDetailsCreditTable.jsp"></jsp:include>

		</div>
	</div>
	<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>