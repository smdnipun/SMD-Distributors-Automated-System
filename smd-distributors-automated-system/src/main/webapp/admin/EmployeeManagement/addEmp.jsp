<jsp:include page="../../WEB-INF/views/common/head.jsp">
  <jsp:param name="Title" value="SMD Distributors" />
</jsp:include>

<%@ page import="java.io.PrintWriter"%>
<%
if (request.getSession().getAttribute("Logged") != null) {
    //request.getSession().setAttribute("Logged", "Guest");
%>


<link rel="stylesheet" href=<%=request.getContextPath() + "/css/Employe.css"%>>
<body>
  <jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>

  
<div class="row">
<jsp:include
page="EmployeeNav.jsp"></jsp:include>
<div class="col-9">

<br>
 <center>
 <h2>Add Employee</h2>
</center>
 


    <form action=<%=request.getContextPath() +"/addemp"%> method="post" class="content">
      <div class="form-group">
        <label for="fname">First Name</label>
        <input type="text" class="form-control" id="fname" name="fname" aria-describedby=""
          placeholder="Enter First name"   pattern="[A-Za-z]{1,38}"   required>
      </div>

      <div class="form-group">
        <label for="lname">Last Name</label>
        <input type="text" class="form-control" name="lname" id="lname" placeholder=""   pattern="[A-Za-z]{1,38}"  required>
      </div>

      <div class="form-group">
        <label for="phone">Phone Number</label>
        <input type="text" class="form-control" id="phone" name="phone" aria-describedby=""
          placeholder="Enter phone number"  pattern="[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}" required>
      </div>

      <!-- <div class="form-group">
        <label for="Username">Username</label>
        <input type="text" class="form-control" name="uname" id="uname" aria-describedby="" >
      </div>


      <div class="form-group">
        <label for="passowrd">Password</label>
        <input type="password" class="form-control" name="password" id="pwd" aria-describedby="" >
      </div>-->


      <div class="form-group">
        <label for="NIC">NIC</label>
        <input type="text" class="form-control" name="nic" id="nic" aria-describedby="NIC" required>
      </div>


      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" class="form-control" name="email" id="email" aria-describedby=""   pattern="[a-zA-Z0-9.!%&'*+\/=?^_`]{3,}@[a-zA-Z0-9]{3,}[.]{1}[a-zA-Z0-9]{2,}"   required>
      </div>



      <div class="form-group">
        <label for="exampleInputEmail1">Address</label>
        <input type="text" class="form-control" name="add" id="add" aria-describedby="" required>
      </div>


      <div class="input-group mb-3">
        <div class="input-group-prepend">
          <label class="input-group-text" for="inputGroupSelect01">Employee Type</label>
        </div>
        <select class="custom-select" name="option" id="option">
          <option selected>Select.</option>
          <option value="driver">Driver</option>
          <option value="cashCollector">Cash Collector</option>
          <option value="labor">Labor</option>
        </select>
      </div>


      <div class="form-check">
        <input type="checkbox" class="form-check-input" id="exampleCheck1" required>
        <label class="form-check-label" for="exampleCheck1" >Checked</label>
      </div>
      <button type="submit" class="btn btn-primary">Add Employee</button>
    </form>




  </div>
  </div>

  </br>
  </br>
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