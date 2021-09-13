<!-- Import heder -->
<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors|Stock Management" /></jsp:include>
	
	<!-- Import table css  file -->
<link rel="stylesheet"
	href=<%=request.getContextPath() + "/css/table.css"%>>
<body>
	<!-- Import stock java script files file -->
	<script src=<%=request.getContextPath() + "/js/stock.js"%>></script>
	<div>
		<div>
		<!-- Import common heder -->
			<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
		</div>
		<div class="row overflow-auto">
			<div class="col-2">
			<!-- Import  Vertical navigation bar-->
				<jsp:include page="../../WEB-INF/views/stockM/stock_navi.jsp"></jsp:include>
			</div>
			<div class="col-10">
			<div class="row d-flex justify-content-center">
			<!-- Import order details table -->
			<jsp:include page="../../WEB-INF/views/stockM/stock_orderdetails.jsp"></jsp:include>
			
			</div><br><br>
			<div class="row d-flex justify-content-center">
			<!-- Import stock order form -->
			<jsp:include page="../../WEB-INF/views/stockM/stockformorder.jsp"></jsp:include>
				<!-- Import stock summary table -->
				<jsp:include page="../../WEB-INF/views/stockM/Stocksummary.jsp"></jsp:include>
				
			</div><br><br>
			<div class="row">
			<jsp:include page="../../WEB-INF/views/stockM/stockdeletetable.jsp"></jsp:include>
			</div>
			</div>
		</div><br><br>
		<div>
		<!-- Import common footer -->
			<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
		</div>
	</div>
</body>