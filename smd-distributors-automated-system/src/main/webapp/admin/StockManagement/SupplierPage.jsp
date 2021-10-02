
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
		<!-- Import Supplier table -->
			<jsp:include page="../../WEB-INF/views/stockM/supplier_table.jsp"></jsp:include><br><br>
			<!-- Import  Supplier form-->
			<jsp:include page="../../WEB-INF/views/stockM/supplier_form.jsp"></jsp:include>
		</div>
	</div>
	<!-- Import common footer -->
	<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
