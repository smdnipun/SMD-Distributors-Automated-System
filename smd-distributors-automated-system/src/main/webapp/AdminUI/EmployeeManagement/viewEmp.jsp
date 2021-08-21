<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>

<body>
	<jsp:include page="../../WEB-INF/views/common/header.jsp"></jsp:include>
	<jsp:include page="../../WEB-INF/views/common/navbar.jsp">
		<jsp:param name="navs" value="ttt,ffff ddddd,fff"  />
	</jsp:include> 

	<div class="(col-10)">
	
  
     
   <table class="table table-dark">
    <thead>
    <tr>
      <th scope="col">EmpID</th>
      <th scope="col">Fname</th>
      <th scope="col">Lname</th>
      <th scope="col">Phone</th>
      <th scope="col">Username</th>
      <th scope="col">Password</th>
      <th scope="col">NIC</th>
      <th scope="col">Email</th>
      <th scope="col">Address</th>
    </tr>
  <tbody>
  <c:forEach var="employee" items="${employeeDetails}">
  
  <c:set var="id"      value="${employee.emp_ID}"/>
  <c:set var="fname"   value="${employee.first_Name}"/>
  <c:set var="lname"   value="${employee.last_Name}"/>
  <c:set var="phone"   value="${employee.phone} "/>
  <c:set var="uname"   value="${employee.username}"/>
  <c:set var="pwd"     value="${employee.password}"/>
  <c:set var="nic"     value="${employee.getNIC()}"/>
  <c:set var="email"   value="${employee.email} "/>
  <c:set var="address" value="${employee.address}"/>
  
  
  
  
  
    <tr>
      <th scope="row">${employee.emp_ID}   </th>
      <td>${employee.first_Name} </td>
      <td>${employee.last_Name}</td>
      <td>${employee.phone}   </td>
      <td>${employee.username}    </td>
      <td>${employee.password}  </td>
      <td>${employee.getNIC()}</td>
      <td>${employee.email}  </td>
      <td>  ${employee.address}  </td>
	 
 	<td>
 	<c:url value="AdminUI/EmployeeManagement/updateEmp.jsp" var="empupdate">
 		<c:param name="id" value="${id}"/>
 		<c:param name="fname" value="${fname}"/>
 		<c:param name="lname" value="${lname}"/>
 		<c:param name="phone" value="${phone}"/>
 		<c:param name="uname" value="${uname}"/>
 		<c:param name="pwd" value="${pwd}"/>
 		<c:param name="nic" value="${nic}"/>
 		<c:param name="email" value="${email}"/>
 		<c:param name="address" value="${address}"/>
 		
 	</c:url>
 	
 	
 	  <a href="${empupdate}"> 
 	  <input type="button" name="update" value="update">
 	  </a>
 	  
 	</td>
 
     <td>
     
     <c:url value="AdminUI/EmployeeManagement/deleteEmployee.jsp" var="empdelete">
 		<c:param name="id" value="${id}"/>
 		<c:param name="fname" value="${fname}"/>
 		<c:param name="lname" value="${lname}"/>
 		<c:param name="phone" value="${phone}"/>
 		<c:param name="uname" value="${uname}"/>
 		<c:param name="pwd" value="${pwd}"/>
 		<c:param name="nic" value="${nic}"/>
 		<c:param name="email" value="${email}"/>
 		<c:param name="address" value="${address}"/>
 		
 	</c:url>
      
   <a href="${empdelete}"> 
 	  <input type="button" name="delete" value="delete">
 	  </a>
 
 
 </td>
 
  <td>
     
     <c:url value="AdminUI/EmployeeManagement/attendanceEmployee.jsp" var="empattend">
 		<c:param name="id" value="${id}"/>
 		<c:param name="fname" value="${fname}"/>
 		<c:param name="lname" value="${lname}"/>
 		<c:param name="phone" value="${phone}"/>
 		<c:param name="nic" value="${nic}"/>
 	
 	</c:url>
      
   <a href="${empattend}"> 
 	  <input type="button" name="ManageAttendance" value="ManageAttendance">
 	  </a>
 
 
 </td>
 
 
   </c:forEach>
  </tbody>
  </thead>
  </table>
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
     
	
	


	</div>


		<br>
		<br>	
		<br>	
		<br>	
		<br>



</body>
</html>
