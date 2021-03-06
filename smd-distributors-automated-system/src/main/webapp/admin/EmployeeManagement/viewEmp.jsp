<%@ page import="java.io.PrintWriter"%>
<%
if (request.getSession().getAttribute("Logged") != null) {
    //request.getSession().setAttribute("Logged", "Guest");
%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" />

	</jsp:include>
    <link rel="stylesheet" href=<%=request.getContextPath() + "/css/Employe.css"%>>
	<body>
	
		<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
		
		
<script>
$(document).ready(function() {
    $('#examplescro').DataTable( {
        "scrollX": true
    } );
} );


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
		
		
		
		
		
		
		
<div class="row">
<jsp:include
page="EmployeeNav.jsp"></jsp:include>
<div class="col-9">

<br>
<center>
 <h2>Employee Details</h2>
</center>

<div style="height: 800px;overflow: scroll;"> 

			<table  id="example" id="examplescro" class="display" style="width:100%">
				<thead>
					<tr>
						<th scope="col">EmpID</th>
						<th scope="col">Type</th>
						<th scope="col">Fname</th>
						<th scope="col">Lname</th>
						<th scope="col">Phone</th>
						<th scope="col">NIC</th>
						<th scope="col">Email</th>
						<th scope="col">Address</th>
						<th scope="col">Update Employee</th>
						<th scope="col">Delete Employee</th>
						<th scope="col">Manage Salary</th>
					</tr>
					</thead>
			          
					<c:forEach var="employee" items="${employeeDetails}">
			
						<c:set var="id" value="${employee.emp_ID}" />
						<c:set var="emp_Type" value="${employee.emp_Type}" />
						<c:set var="fname" value="${employee.first_Name}" />
						<c:set var="lname" value="${employee.last_Name}" />
						<c:set var="phone" value="${employee.phone} " />
						<c:set var="uname" value="${employee.username}" />
						<c:set var="pwd" value="${employee.password}" />
						<c:set var="nic" value="${employee.getNIC()}" />
						<c:set var="email" value="${employee.email} " />
						<c:set var="address" value="${employee.address}" />



						<tr>
							<th scope="row">${employee.emp_ID} </th>
							<td>${employee.emp_Type} </td>
							<td>${employee.first_Name} </td>
							<td>${employee.last_Name}</td>
							<td>${employee.phone} </td>
							<td>${employee.getNIC()}</td>
							<td>${employee.email} </td>
							<td> ${employee.address} </td>

							<td>
								<c:url value="admin/EmployeeManagement/updateEmp.jsp" var="empupdate">
									<c:param name="id" value="${id}" />
									<c:param name="emp_Type" value="${emp_Type}" />
									<c:param name="fname" value="${fname}" />
									<c:param name="lname" value="${lname}" />
									<c:param name="phone" value="${phone}" />
									<c:param name="nic" value="${nic}" />
									<c:param name="email" value="${email}" />
									<c:param name="address" value="${address}" />

								</c:url>


								<a href="${empupdate}">
									<input type="button" name="update" value="update">
								</a>

							</td>

							<td>

								<c:url value="admin/EmployeeManagement/deleteEmployee.jsp" var="empdelete">
									<c:param name="id" value="${id}" />
									<c:param name="fname" value="${fname}" />
									<c:param name="lname" value="${lname}" />
									<c:param name="phone" value="${phone}" />
									<c:param name="nic" value="${nic}" />
									<c:param name="email" value="${email}" />
									<c:param name="address" value="${address}" />

								</c:url>

								<a href="${empdelete}">
									<input type="button" name="delete" value="delete">
								</a>


							</td>

							<td>

								<c:url value="admin/EmployeeManagement/attendanceEmployee.jsp" var="empattend">
									<c:param name="id" value="${id}" />
									<c:param name="emp_Type" value="${emp_Type}" />
									<c:param name="fname" value="${fname}" />
									<c:param name="lname" value="${lname}" />
									<c:param name="phone" value="${phone}" />
									<c:param name="nic" value="${nic}" />

								</c:url>

								<a href="${empattend}">
									<input type="button" name="ManageAttendance" value="Manage sal & leave">
								</a>


							</td>


					</c:forEach>
            </tbody>  
			</table>
	</div>
	</div>
   </div>  



		<br>
		<br>
		<br>
		<br>
		<br>

 
<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>

	</body>

	</html>
	
<%
} else {
    PrintWriter redirect = response.getWriter();
    redirect.println("<script>");
    redirect.println("location='./login.jsp'");//put the location from your jsp file
    redirect.println("</script>");
}
%>