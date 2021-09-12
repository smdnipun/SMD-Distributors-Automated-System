<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

	<script src="https://raw.githack.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js" ></script>
	<script type="text/javascript">
	function generatePdf(){
	var d = new Date();
	var y = d.getFullYear();

	var month = new Array();
	month[0] = "January";
	month[1] = "February";
	month[2] = "March";
	month[3] = "April";
	month[4] = "May";
	month[5] = "June";
	month[6] = "July";
	month[7] = "August";
	month[8] = "September";
	month[9] = "October";
	month[10] = "November";
	month[11] = "December";
	var n = month[d.getMonth()];

	var str = 'Monthly Delivery Report-'+y+"-"+n;
	const element=document.getElementById("report");
	html2pdf().from(element).save(str);
	}
	</script>
	
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
	<div id="report">
		<center>
			<h5>Delivery Report</h5>
		</center>
		
	
	<table class="table table-hover">
	
		<thead>
			<tr>
	
				<th scope="col">Delivery ID</th>
				<th scope="col">Route</th>
				<th scope="col">Date</th>
				<th scope="col">Status</th>
				<th scope="col">Order ID</th>
				<th scope="col">Customer ID</th>
				<th scope="col">Vehicle</th>
				<th scope="col"></th>
				
				
	
			</tr>
		</thead>
		<tbody>
			<c:forEach var="del" items="${deliveryDetails}">
				
				<tr>
					<td><c:out value="${del.delivryID}" /></td>
					<td><c:out value="${del.route}" /></td>
					<td><c:out value="${del.date}" /></td>
					<td><c:out value="${del.status}"/></td>
					<td><c:out value="${del.oID}" /></td>
					<td><c:out value="${del.cID}" /></td>
					<td><c:out value="${del.vehicle}" /></td>
				</tr>
	
			</c:forEach>
	
		</tbody>
	</table>
	</div>
	
	
	<button type="submit" name="pdf" onclick="generatePdf()" class="btn btn-primary"style="background-color:#fbda57; color:#000000">Print </button>
	
	
	
	</div>
	</div>
	
			
		<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
		
</body>
</html>