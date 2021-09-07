<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CustomerDuePayment</title>
</head>
<body>
	<jsp:include page="../../WEB-INF/views/common/head.jsp"></jsp:include>
	<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
	<div class="row">
		<jsp:include
			page="../../WEB-INF/views/creditSales/creditNavigationBar.jsp"></jsp:include>
		<div class="col-9">
			<jsp:include
				page="../../WEB-INF/views/creditSales/customerBalanceTableandForm.jsp"></jsp:include>
			
		</div>
	</div>
	<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>