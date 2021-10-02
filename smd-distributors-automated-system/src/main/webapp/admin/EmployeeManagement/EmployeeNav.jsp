<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="col-2" style="background-color: #e4e4e4 ;height:900px">
<!-- Tab navs -->
<div class="nav flex-column nav-tabs text-center" id="v-tabs-tab"
role="tablist" aria-orientation="vertical">


<a class="nav-link"
id="v-tabs-profile-tab" data-mdb-toggle="tab" href=<%=request.getContextPath() +"/admin/EmployeeManagement/addEmp.jsp"%>
role="tab" aria-controls="v-tabs-profile" aria-selected="false">Add Employee</a> 



<a class="nav-link" id="v-tabs-home-tab">

     <form action=<%=request.getContextPath() +"/viewemp"%> method="post" >

      <button class="button" type="submit">MANAGE EMPLOYEES</button>

    </form>
    
</a>


<a class="nav-link" id="v-tabs-home-tab">

     <form action=<%=request.getContextPath() +"/attendemp"%> method="post" >

      <button class="button" type="submit">EMPLOYEE MONTHLY ATTENDANCE</button>

    </form>
    
</a>



<a class="nav-link" id="v-tabs-home-tab">

     <form action=<%=request.getContextPath() +"/empSal"%> method="post" >

      <button class="button" type="submit">EMPLOYEE MONTHLY SALARY</button>

    </form>
    
</a>


<a class="nav-link" id="v-tabs-home-tab">

     <form action=<%=request.getContextPath() +"/employeeBasInfo"%> method="post" >

      <button class="button" type="submit">EMPLOYEE BASIC INFROMATIONS</button>

    </form>
    
</a>


<a class="nav-link" id="v-tabs-home-tab">

     <form action=<%=request.getContextPath() +"/employeeresigninfo"%> method="post" >

      <button class="button" type="submit">RESINED EMPLOYEES</button>

    </form>
    
</a>






</div>
</div>

















</body>
</html>