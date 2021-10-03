

<!-- Import Header file -->
<jsp:include page="../../WEB-INF/views/common/head.jsp">
	
	<jsp:param name="Title" value="SMD Distributors|Stock Management" />
	</jsp:include>
	<!-- Import table css  file -->
<link rel="stylesheet"
	href=<%=request.getContextPath() + "/css/table.css"%>>
<body>
	<!-- Import stock java script files file -->
	<script src=<%=request.getContextPath() + "/js/stock.js"%>></script>
	<div>
		<div>
			<!-- Import comman Header file -->
			<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
		</div>
		<div class="row overflow-auto">
			<div class="col-2">
			<!-- Import left side vertical navigation bar -->
				<jsp:include page="../../WEB-INF/views/stockM/stock_navi.jsp"></jsp:include>
			</div>
			<div class="col-10 pb-5">
				<div class="row">
				<!-- Import Stock Table -->
				<jsp:include page="../../WEB-INF/views/stockM/stock_report.jsp"></jsp:include><br><br>
		
				<%-- <jsp:include page="../../WEB-INF/views/stockM/stock_summary_report_table.jsp"></jsp:include><br><br> --%>	
				</div>
				<br><br>
		
			</div>
		</div><br>
		<div>
		<!-- Import common footer file -->
			<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
		</div>
	</div>
	<!-- importing required js frameworks for convert table to pdf -->
	<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
	<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
	<!-- Converting the table on the page to pdf and downloading -->
	<script type="text/javascript">
	$("body").on(
			"click",
			"#repgenerate1",
			function() {
				html2canvas($('#stock')[0], {
					onrendered : function(canvas) {
						var data = canvas.toDataURL();
						var docDefinition = {
							content : [ {
								image : data,
								width : 500
							} ]
						};
						pdfMake.createPdf(docDefinition).download(
								"Suppliers.pdf");
					}
				});
			});
</script> 
</body>