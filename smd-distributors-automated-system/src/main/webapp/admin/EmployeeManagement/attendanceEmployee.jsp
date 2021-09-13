<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
	<link rel="stylesheet" href=<%=request.getContextPath() + "/css/Employe.css"%>>
	
<%@ page import="java.io.PrintWriter"%>
<%
if (request.getSession().getAttribute("Logged") != null) {
    //request.getSession().setAttribute("Logged", "Guest");
%>	

<body>
	<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>

<div class="row">
<jsp:include
page="EmployeeNav.jsp"></jsp:include>
<div class="col-9">

<br>
<center>
 <h2>Employee Salary and Attendance Calculation</h2>
</center>
	
	
      <%
         String id = request.getParameter("id");
         String type = request.getParameter("emp_Type");
        
      
      %> 
      
	
	<form action=<%=request.getContextPath() +"/empsalattnd" %> class="content" method="post">
	
	<div class="form-group">
    <label for="fname">EmployeeID</label>
    <input type="text" class="form-control" id="fname" name="id" aria-describedby="" readonly value="<%=id%>">
  </div>
	
	
	<div class="form-group">
    <label for="fname">EmployeeType</label>
    <input type="text" class="form-control" id="etype" name="etype" aria-describedby="" readonly value="<%=type%>">
  </div>
	
	
	


 <div class="form-group">
    <label for="worked">Enter Hours Worked</label>
    <input type="text" class="form-control"  name="worked" id="worked" aria-describedby=""  pattern="[0-9]{1,}" required>
  </div>
  


 <div class="form-group">
    <label for="date">Enter Month</label>
    <input type="date" class="form-control"  name="date" id="date" aria-describedby="" required>
  </div>

 


  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1" required>
    <label class="form-check-label" for="exampleCheck1">Checked</label>
  </div>
  <button type="submit" class="btn btn-primary">Add Worked Hours</button>
</form>




	</div>
    </div>

		<br>
		<br>	
		<br>	
		<br>	
		<br>



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
