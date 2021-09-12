<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<jsp:include page="../../WEB-INF/views/common/head.jsp"></jsp:include>
		<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
		
		<div class="row">
			<jsp:include
				page="../../WEB-INF/views/Delivery/DeliveryNavigationbar.jsp"></jsp:include>
			<div class="col-9">
				
				<h2 >Add Delivery</h2>	
				
				<jsp:include page="../../WEB-INF/views/Delivery/addDeliveryForm.jsp"></jsp:include>
				
				<br/><br/><br/><br/>
	
	
	<form action="<%=request.getContextPath() + "/odr"%>" method="post">
	<table class="table table-hover">

	<thead>
		<tr>

			<th scope="col">Order ID</th>
			<th scope="col">Customer</th>
			<th scope="col">Date</th>
			<th scope="col">Order Status</th>
			<th scope="col">Total Price</th>
			<th scope="col">Quantity</th>
			<th scope="col">Product ID</th>
			

		</tr>
	</thead>
	<tbody>
		<c:forEach var="odr" items="${orderdetails}">
		
		<c:set var="oid" value="${odr.OID}"/>
		<c:set var="oid" value="${odr.CID}"/>
		<c:set var="oid" value="${odr.OSTATE}"/>
		<c:set var="oid" value="${odr.QTY}"/>
		<c:set var="oid" value="${odr.PID}"/>
		<c:set var="oid" value="${odr.TPRICE}"/>
		
			<tr>
				<td><c:out value="${odr.OID}" /></td>
				<td><c:out value="${odr.CID}" /></td>
				<td><c:out value="${odr.ODATE}" /></td>
				<td><c:out value="${odr.OSTATE}" /></td>
				<td><c:out value="${odr.TPRICE}" /></td>
				<td><c:out value="${odr.QTY}" /></td>
				<td><c:out value="${odr.PID}" /></td>
				<td>
				
				<c:url value="admin/DeliveryManage/AddDelivery.jsp" var="getOrd">
	
					<c:param name="oid" value="${odr.OID}"/>
					<c:param name="cid" value="${odr.CID}"/>
					<c:param name="ostate" value="${odr.OSTATE}"/>
					<c:param name="qty" value="${odr.QTY}"/>
					<c:param name="pid" value="${odr.PID}"/>
					<c:param name="tprice" value="${odr.TPRICE}"/>
	
				</c:url>
				
				<a href="${getOrd}"><input type="button"  name="getOrd" value="Get Details" style="background-color:#fbda57; color:#000000"></a>
			
				</td>
				
			</tr>
		</c:forEach>

	</tbody>
</table>
</form>
			</div>
		</div>
		
		<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>