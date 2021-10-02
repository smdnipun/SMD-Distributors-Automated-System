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
				
				
	
			</tr>
		</thead>
		<tbody>
			<c:forEach var="del" items="${deliveryDetails}">
				<form action=<%=request.getContextPath() + "/updated"%> method="post">
				<tr>
					<td><input type="text" value="${del.delivryID}" name="did" class="form-control" readonly/></td>
					<td><c:out value="${del.route}" /></td>
					<td><c:out value="${del.date}" /></td>
					<td><select class="dropdown-header" name="upStatus" id="formGroupExampleInput">
				    <option value="${del.status}">${del.status}</option>
				    <option value="NotDelivered">NotDelivered</option>
				    <option value="delivered">delivered</option>
				   </select></td>
					<td><c:out value="${del.oID}" /></td>
					<td><c:out value="${del.cID}" /></td>
					<td><c:out value="${del.vehicle}" /></td>
					<td><input type="submit" name="uodate" value="Update" class="btn btn-primary"style="background-color:#fbda57; color:#000000"> </td>
				</tr>
				</form>
				
				<form  action=<%=request.getContextPath() + "/deleted"%>  method="post">
				<tr>
					<td/><td/><td/><td/><td/><td/>
					<td><input type="hidden" value="${del.delivryID}" name="did" class="form-control" id="formGroupExampleInput" readonly/></td>
					<td><input type="submit" name="delete" value="Delete" class="btn btn-primary"style="background-color:#fbda57; color:#000000"> </td>
				</tr>
				</form>
			</c:forEach>
	
		</tbody>
	</table>
	
	<br><br><br>
	
	<div class="float-right">
	
	<form action=<%=request.getContextPath() + "/dreport"%> method="post">
	
	<div class="mb-4">
				<label for="formGroupExampleInput" class="form-label">Date</label>
				<input type="date" name="rdate" aria-describedby="" class="form-control" id="formGroupExampleInput" required>
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