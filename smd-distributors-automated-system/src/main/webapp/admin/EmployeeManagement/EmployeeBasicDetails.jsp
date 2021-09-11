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
   
    var str = 'Employee Basic Info-'+y+"-"+n;
    const element=document.getElementById("report");
    html2pdf().from(element).save(str);
}
</script>






</head>
<body>

<jsp:include page="../../WEB-INF/views/common/header.jsp"></jsp:include>





<div class="row">
<jsp:include
page="EmployeeNav.jsp"></jsp:include>
<div class="col-9">

<center>
 <h2>Employee Basic Information</h2>
</center>
		<div id="report">
			<table id="example" class="table  display nowrap"  style="width:100%">
				<thead class="thead-dark">
					<tr>
						<th scope="col">EmpType</th>
						<th scope="col">Basic Salary</th>
						<th scope="col">Work Hours(perMonth)</th>
						<th scope="col">OT Rate(perHour)</th>
				
					</tr>
				
				<c:forEach var="empbasicin" items="${employeeBasicInforDetails}">
				<tbody>
					
	

						<tr>
							<th scope="row">${empbasicin.employee_Type} </th>
							<td>${empbasicin.basic_Salary} </td>
							<td>${empbasicin.hours} </td>
							<td>${empbasicin.getOT_Rate()}</td>
						
					    </tr>


		        </c:forEach>
				</tbody>
			    </table>

		</div>
					<button onclick="generatePdf()">Print Report </button>
</div>
</div>











 
<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>


</body>
</html>