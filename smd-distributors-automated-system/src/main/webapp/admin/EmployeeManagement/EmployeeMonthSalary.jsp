<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" />

	</jsp:include>
	
    
    
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href=<%=request.getContextPath() + "/css/Employe.css"%>>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script src ="https://raw.githack.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js"> </script>

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
   
    var str = 'EmployeeSalaryReport-'+y+"-"+n;
    const element=document.getElementById("empSalReport");
    html2pdf().from(element).save(str);
}
</script>



<script>
$(document).ready(function() {
    $('#example').DataTable( {
        "scrollX": true
    } );
} );



</script>






</head>
<body>


<jsp:include page="../../WEB-INF/views/common/header.jsp"></jsp:include>


<div class="row">
<jsp:include
page="EmployeeNav.jsp"></jsp:include>
<div class="col-9">



<center>
 <h2>Employee Monthly Salary Report</h2>
</center>


<button  onclick="generatePdf()">Print Report </button>


	<div id="empSalReport" >
	
			<table id="example" class="table  display nowrap" style="width:100%">
				<thead class="thead-dark" >
					<tr>
						<th scope="col">EmpType</th>
						<th scope="col">FirstName</th>
						<th scope="col">BasicSalary</th>
						<th scope="col">TotalSalary</th>
						<th scope="col">OT_Increement</th>
						<th scope="col">Work_Hours</th>
						<th scope="col">Hours_worked</th>
						<th scope="col">OT_Rate</th>
						<th scope="col">Month</th>
				
					</tr>
					</thead>
				<c:forEach var="empsal" items="${employeeSalary}">
				<tbody>
					
	

						<tr>
							<th scope="row">${empsal.employee_Type} </th>
							<td>${empsal.first_Name} </td>
							<td>${empsal.basicSalary} </td>
							<td>${empsal.totalSalary}</td>
							<td>${empsal.getOT_Increement()} </td>
							<td>${empsal.work_Hours} </td>
							<td>${empsal. hours_worked}</td>
							<td>${empsal.getOT_Rate()} </td>
							<td>${empsal.month} </td>
					    </tr>


		        </c:forEach>
				</tbody>
			    </table>

</div>
</div>
</div>
</div>











 
<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>

</body>
</html>