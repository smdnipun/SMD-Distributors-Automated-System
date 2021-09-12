<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors | Payment" /></jsp:include>
<link rel="stylesheet"
	href=<%=request.getContextPath() + "/css/table.css"%>>
<body>
	<script src=<%=request.getContextPath() + "/js/payTable.js"%>></script>
	<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
			<jsp:include page="../../WEB-INF/views/creditSales/CustomerPrePayments.jsp"></jsp:include>
			<div class="row">
		
	
	</div>
	<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>