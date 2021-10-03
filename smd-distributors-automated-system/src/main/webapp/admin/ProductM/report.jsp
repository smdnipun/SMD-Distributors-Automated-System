<%
//if (request.getSession().getAttribute("Logged").equals("Product")) {
%>
<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
<link rel="stylesheet"
	href=<%=request.getContextPath() + "/css/product.css"%>>
<body>
	<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
	<jsp:include page="../../WEB-INF/views/productM/report.jsp"></jsp:include>
	<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
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
			"#btnExport",
			function() {
				html2canvas($('#tblCustomers')[0], {
					onrendered : function(canvas) {
						var data = canvas.toDataURL();
						var docDefinition = {
							content : [ {
								image : data,
								width : 500
							} ]
						};
						pdfMake.createPdf(docDefinition).download(
								"customer-details.pdf");
					}
				});
			});
</script>
</html>
<%
//}
%>