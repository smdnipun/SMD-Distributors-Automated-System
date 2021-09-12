<!-- Import Header file -->
<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<!--  -->
	<jsp:param name="Title" value="SMD Distributors|Stock Management" /></jsp:include>
	<!-- Import table css  file -->
<link rel="stylesheet"
	href=<%=request.getContextPath() + "/css/table.css"%>>
<body>
	<!-- Import stock java script files file -->
	<script src=<%=request.getContextPath() + "/js/stock.js"%>></script>
	<div>
		<div>
			<!-- Import comman Header file -->
			<jsp:include page="../../WEB-INF/views/common/header.jsp"></jsp:include>
		</div>
		<div class="row overflow-auto">
			<div class="col-2">
			<!-- Import left side vertical navigation bar -->
				<jsp:include page="../../WEB-INF/views/stockM/stock_navi.jsp"></jsp:include>
			</div>
			<div class="col-10 pb-5">
				<div class="row">
				<!-- Import Stock Table -->
					<jsp:include page="../../WEB-INF/views/stockM/Stock_table.jsp"></jsp:include>
				</div>
				<div class="row">
				<!-- Import Stock adding form -->
					<jsp:include page="../../WEB-INF/views/stockM/stock_form.jsp"></jsp:include>
					<!-- Import Stock summary form -->
					<jsp:include page="../../WEB-INF/views/stockM/Stocksummary.jsp"></jsp:include>
				</div>

			</div>
		</div>
		<div>
		<!-- Import common footer file -->
			<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
		</div>
	</div>
</body>
