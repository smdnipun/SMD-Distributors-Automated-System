<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>

<body>
	<jsp:include page="../../WEB-INF/views/common/header.jsp"></jsp:include>
	<jsp:include page="../../WEB-INF/views/common/navbar.jsp">
		<jsp:param name="navs" value="ttt,ffff ddddd,fff"  />
	</jsp:include> 

	<div class="(col-10)">
	
	<c:forEach var="employee" items="${employeeDetails}">
	
	${employee.emp_ID}    
	${employee.first_Name}    
 	${employee.last_Name}     
	${employee.phone}   
	${employee.username}        
 	${employee.password}      
	${employee.nIC}    
	${employee.email}     
    ${employee.address}     
    ${employee.total_Salary}  
    ${employee.hours_Worked} 
    ${employee.emp_Type}    
     
      
     
	
	
	</c:forEach>

	</div>


		<br>
		<br>	
		<br>	
		<br>	
		<br>



</body>
</html>
