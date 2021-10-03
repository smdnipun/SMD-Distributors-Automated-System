<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="java.io.PrintWriter"%>
<%
if (request.getSession().getAttribute("Logged") != null) {
	//request.getSession().setAttribute("Logged", "Guest");
%>

<!DOCTYPE html>

<html>
<head>
<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors/Delivery Management" /></jsp:include>
<meta charset="ISO-8859-1">

<style>
	thead input {
        width: 100%;
    }
</style>

</head>
<body>




	<jsp:include page="../../WEB-INF/views/common/head.jsp"></jsp:include>
		<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
		
		<div class="row">
			<jsp:include
				page="../../WEB-INF/views/Delivery/DeliveryNavigationbar.jsp"></jsp:include>
			<div class="col-9">
	
	
	<script>
	
	
	$(document).ready(function () {
	    // Setup - add a text input to each footer cell
	    $('#example thead tr')
	        .clone(true)
	        .addClass('filters')
	        .appendTo('#example thead');
	 
	    var table = $('#example').DataTable({
	        orderCellsTop: true,
	        fixedHeader: true,
	        initComplete: function () {
	            var api = this.api();
	 
	            // For each column
	            api
	                .columns()
	                .eq(0)
	                .each(function (colIdx) {
	                    // Set the header cell to contain the input element
	                    var cell = $('.filters th').eq(
	                        $(api.column(colIdx).header()).index()
	                    );
	                    var title = $(cell).text();
	                    $(cell).html('<input type="text" placeholder="' + title + '" />');
	 
	                    // On every keypress in this input
	                    $(
	                        'input',
	                        $('.filters th').eq($(api.column(colIdx).header()).index())
	                    )
	                        .off('keyup change')
	                        .on('keyup change', function (e) {
	                            e.stopPropagation();
	 
	                            // Get the search value
	                            $(this).attr('title', $(this).val());
	                            var regexr = '({search})'; //$(this).parents('th').find('select').val();
	 
	                            var cursorPosition = this.selectionStart;
	                            // Search the column for that value
	                            api
	                                .column(colIdx)
	                                .search(
	                                    this.value != ''
	                                        ? regexr.replace('{search}', '(((' + this.value + ')))')
	                                        : '',
	                                    this.value != '',
	                                    this.value == ''
	                                )
	                                .draw();
	 
	                            $(this)
	                                .focus()[0]
	                                .setSelectionRange(cursorPosition, cursorPosition);
	                        });
	                });
	        },
	    });
	});
	
	
	</script>
	
	
	
		<center>
			<h5>Delivery Details</h5>
		</center>
	
	
	
	<table style="width:100%" id="example" class="display" >
	<thead class="thead-dark">
			<tr>
	
				<th scope="col">Delivery_ID</th>
				<th scope="col">Route</th>
				<th scope="col">Date</th>
				<th scope="col">Status</th>
				<th scope="col">Order_ID</th>
				<th scope="col">Customer_ID</th>
				<th scope="col">Vehicle</th>
				<th scope="col"></th>
				<th scope="col"></th>
				
				
	
			</tr>
		</thead>
		<tbody>
			<c:forEach var="del" items="${deliveryDetails}">

				<tr>
				
				  <c:set var="did" value="${del.delivryID}"/>
				  <c:set var="droute" value="${del.route}"/>
				  <c:set var="ddate" value="${del.date}"/>
				  <c:set var="dstatus" value="${del.status}"/>
				  <c:set var="doid" value="${del.oID}"/>
				  <c:set var="dcid" value="${del.cID}"/>
				  <c:set var="vehicle" value="${del.vehicle}"/>
				  
				
				
					<td><c:out value="${del.delivryID}"/></td>
					<td><c:out value="${del.route}" /></td>
					<td><c:out value="${del.date}" /></td>
					<td><c:out value="${del.status}" /></td>				    				
					<td><c:out value="${del.oID}" /></td>
					<td><c:out value="${del.cID}" /></td>
					<td><c:out value="${del.vehicle}" /></td>
					<td>
					
					<c:url value="admin/DeliveryManage/UpdateDelivery.jsp" var="updateDelivery">
				      <c:param name="ddid" value="${did}"/>
				      <c:param name="droute" value="${droute}"/>
				      <c:param name="ddate" value="${ddate}"/>
				      <c:param name="dstatus" value="${dstatus}"/>
				      <c:param name="doid" value="${doid}"/>
				      <c:param name="dcid" value="${dcid}"/>
				      <c:param name="vehicle" value="${vehicle}"/>
				    </c:url>
				      	<a href="${updateDelivery}">
				        <input type="button" name="update" value="Update" class="btn btn-primary"style="background-color:#fbda57; color:#000000">
				      </a>
					
					</td>
					
					<td>
						<c:url value="admin/DeliveryManage/DeleteDelevery.jsp" var="deleteDelivery">
				      <c:param name="ddid" value="${did}"/>
				      <c:param name="droute" value="${droute}"/>
				      <c:param name="ddate" value="${ddate}"/>
				      <c:param name="dstatus" value="${dstatus}"/>
				      <c:param name="doid" value="${doid}"/>
				      <c:param name="dcid" value="${dcid}"/>
				      <c:param name="vehicle" value="${vehicle}"/>
				    </c:url>
				      	<a href="${deleteDelivery}">
				        <input type="button" name="delete" value="Delete" class="btn btn-primary"style="background-color:#fbda57; color:#000000">
				      </a>
					
					</td>
					
				</tr>
				
				
				
	
				
			</c:forEach>
	
		</tbody>
	</table>
	
	<br><br><br>
	
	<div class="float-right">
	
	<form action=<%=request.getContextPath() + "/dreport"%> method="post">
	
	<div class="mb-4">
				<label for="formGroupExampleInput" class="form-label">Date</label>
				<input type="date" name="rdate" aria-describedby="" class="form-control" id="formGroupExampleInput" required>
				<select class="dropdown-header" name="rstatus" id="formGroupExampleInput"required>
				    <option value="NotDelivered">NotDelivered</option>
				    <option value="delivered">delivered</option>
				</select>    
	</div>
	<button type="submit" name="report" class="btn btn-primary"style="background-color:#fbda57; color:#000000">Generate Report </button>
	
	</form>
	
	</div>
	
	</div>
	</div>

	<br><br><br><br>
	<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>

</body>
</html>
<%
} else {
PrintWriter redirect = response.getWriter();
redirect.println("<script>");
redirect.println("location='../../login.jsp'");//put the location from your jsp file
redirect.println("</script>");
}
%>