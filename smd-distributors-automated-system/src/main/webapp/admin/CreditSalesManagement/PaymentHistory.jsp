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
	<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
	<script type="text/javascript">
	$("body").on(
			"click",
			"#genRep",
			function() {
				html2canvas($('#payTable')[0], {
					onrendered : function(canvas) {
						var data = canvas.toDataURL();
						var docDefinition = {
							content : [ {
								image : data,
								width : 500
							} ]
						};
						pdfMake.createPdf(docDefinition).download(
								"Payment History.pdf");
					}
				});
			});
</script>
	
</body>
</html>