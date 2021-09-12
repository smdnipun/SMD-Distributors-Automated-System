<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors/Delivery Management" /></jsp:include>
	<meta charset="ISO-8859-1">
</head>
<body>

	<jsp:include page="../../WEB-INF/views/common/head.jsp"></jsp:include>
		<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
		
		<div class="row">
			<jsp:include
				page="../../WEB-INF/views/Delivery/DeliveryNavigationbar.jsp"></jsp:include>
			<div class="col-9">
				
				
				
				
				
				<form action=<%=request.getContextPath() + "/viewd"%> method="post">
				
					<input type="submit" name="view" value="view">
				</form>
				
				<form action=<%=request.getContextPath() + "/odr"%> method="post">
				
					<input type="submit" name="odr" value="Add">
				</form>
				
							
				
				
		
				
			</div>
	</div>
		
	<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
	
</body>
</html>