<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import = "com.smd.model.NewOrdersConf" %>
<%@ page import = "com.smd.service.CreditSalesM" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
	if(request.getSession().getAttribute("Logged")==null){
		request.getSession().setAttribute("Logged","Guest");
	}

	if(request.getAttribute("data")==null){
		CreditSalesM dbc = new CreditSalesM();
		NewOrdersConf[] items = (NewOrdersConf[]) dbc.getNewOrderDetails();
		request.setAttribute("data", items);
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NewOrdersToConfirm</title>
</head>
<body>
	<jsp:include page="../../WEB-INF/views/common/head.jsp"></jsp:include>
	<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
	<div class="row">
		<jsp:include
			page="../../WEB-INF/views/creditSales/creditNavigationBar.jsp"></jsp:include>
		<jsp:include
			page="../../WEB-INF/views/creditSales/acceptOrderTable.jsp"></jsp:include>
	</div>
	<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>