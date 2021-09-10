<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="col-2" style="background-color: #e4e4e4">
<!-- Tab navs -->
<div class="nav flex-column nav-tabs text-center" id="v-tabs-tab"
role="tablist" aria-orientation="vertical">
<a class="nav-link" id="v-tabs-home-tab" data-mdb-toggle="tab"
href="#v-tabs-home" role="tab" aria-controls="v-tabs-home"
aria-selected="true">Home</a> <a class="nav-link"
id="v-tabs-profile-tab" data-mdb-toggle="tab" href=<%=request.getContextPath() + "/admin/EmployeeManagement/addEmp.jsp"%>
role="tab" aria-controls="v-tabs-profile" aria-selected="false">Add Employee</a> 


<a class="nav-link" id="v-tabs-home-tab">

     <form action=<%=request.getContextPath() +"/viewemp"%> method="post" >

      <button class="button" type="submit">View Employee</button>

    </form>
    
</a>
</div>
</div>

















</body>
</html>