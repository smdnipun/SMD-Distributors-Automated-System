<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CustomerAged</title>
<link rel="stylesheet"
	href=<%=request.getContextPath() + "/css/payTable.css"%>>
</head>
<body>
	<jsp:include page="../../WEB-INF/views/common/head.jsp"></jsp:include>
	<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
	<div class="row">
		<jsp:include
			page="../../WEB-INF/views/creditSales/creditNavigationBar.jsp"></jsp:include>
		<jsp:include
			page="../../WEB-INF/views/creditSales/customerAgedTable.jsp"></jsp:include>


	</div>
	<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>

	<!-- importing required js frameworks for convert table to pdf -->
	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
	<script type="text/javascript">
	<!-- Converting the table on the page to pdf and downloading -->
		$("body").on(
				"click",
				"#print",
				function() {
					html2canvas($('#customerDetails')[0], {
						onrendered : function(canvas) {
							var data = canvas.toDataURL();
							var docDefinition = {
								content : [ {
									image : data,
									width : 500
								} ]
							};
							pdfMake.createPdf(docDefinition).download(
									"CustomerAged.pdf");
						}
					});
				});
	</script>
</body>
</html>