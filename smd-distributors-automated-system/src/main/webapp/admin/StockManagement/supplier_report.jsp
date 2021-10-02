
<!-- Import heder -->
<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors|Stock Management" /></jsp:include>
<body>
<!-- Import  common heder -->
	<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
	<div class="row">
		<div class="col-2">
		<!-- Import vertical navigation bar -->
			<jsp:include page="../../WEB-INF/views/stockM/stock_navi.jsp"></jsp:include>
		</div>
		<div class="col-10 pb-5" >
		
		<jsp:include page="../../WEB-INF/views/stockM/supplier_report_table.jsp"></jsp:include><br><br>
		
		</div>
	</div>
	<!-- Import common footer -->
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
			"#repgenerate",
			function() {
				html2canvas($('#table')[0], {
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