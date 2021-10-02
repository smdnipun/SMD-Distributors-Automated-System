<%@ page import="java.io.PrintWriter"%>
<%
if (request.getSession().getAttribute("Logged") != null) {
    //request.getSession().setAttribute("Logged", "Guest");
%>


<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
	<link rel="stylesheet" href=<%=request.getContextPath() + "/css/Employe.css"%>>
<body>
	<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
	
<div class="row">
<jsp:include
page="EmployeeNav.jsp"></jsp:include>
<div class="col-9">

<br>	
<center>
 <h2>Update Employee</h2>
</center>
	
	
	
      <%
         String id = request.getParameter("id");
         String fname = request.getParameter("fname");
         String lname = request.getParameter("lname");
         String phone = request.getParameter("phone");
         String nic = request.getParameter("nic");
         String email = request.getParameter("email");
         String address = request.getParameter("address");
      %> 
      
	
	<form action=<%=request.getContextPath() +"/updateemp" %> class="content" method="post">
	
	<div class="form-group">
    <label for="fname">EmployeeID</label>
    <input type="text" class="form-control" id="fname" name="id" aria-describedby="" readonly value="<%=id%>">
  </div>
	
  <div class="form-group">
    <label for="fname">First Name</label>
    <input type="text" class="form-control" id="fname" name="fname" aria-describedby=""  pattern="[A-Za-z]{1,38}" value="<%=fname%>" required>
  </div>

  <div class="form-group">
    <label for="lname">Last Name</label>
    <input type="text" class="form-control" name="lname" id="lname"  value="<%=lname%>"  pattern="[A-Za-z]{1,38}" required>
  </div>

  <div class="form-group">
    <label for="phone">Phone Number</label>
    <input type="text" class="form-control" id="phone"  name="phone" aria-describedby=""  value="<%=phone%>" pattern="[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}" required>
  </div>


  <div class="form-group">
    <label for="NIC">NIC</label>
    <input type="text" class="form-control"  name="nic" id="nic" aria-describedby="NIC" readonly value="<%=nic%>">
  </div>


  <div class="form-group">
    <label for="email">Email</label>
    <input type="email" class="form-control" name="email" id="email" aria-describedby="" readonly value="<%=email%>" >
  </div>



  <div class="form-group">
    <label for="exampleInputEmail1">Address</label>
    <input type="text" class="form-control" name="add" id="add" aria-describedby=""  value="<%=address%>" required>
  </div>


  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1" required>
    <label class="form-check-label" for="exampleCheck1">Checked</label>
  </div>
  <button type="submit" class="btn btn-primary">Update Employee</button>
</form>




	</div>

</div>
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
