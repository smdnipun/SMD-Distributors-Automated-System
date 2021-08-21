<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
<body>
	<jsp:include page="../../WEB-INF/views/common/header.jsp"></jsp:include>
	<jsp:include page="../../WEB-INF/views/common/navbar.jsp">
		<jsp:param name="navs" value="ttt,ffff ddddd,fff"  />
	</jsp:include> 

<div class="(col-10)">
	
	
	
      <%
         String id = request.getParameter("id");
         String fname = request.getParameter("fname");
         String lname = request.getParameter("lname");
         String phone = request.getParameter("phone");
         String nic = request.getParameter("nic");
      
      %> 
      
	
	<form action=<%=request.getContextPath() +"/attend" %> method="post">
	
	<div class="form-group">
    <label for="fname">EmployeeID</label>
    <input type="text" class="form-control" id="fname" name="id" aria-describedby="" readonly value="<%=id%>">
  </div>
	
  <div class="form-group">
    <label for="fname">First Name</label>
    <input type="text" class="form-control" id="fname" name="fname" aria-describedby="" value="<%=fname%>">
  </div>

  <div class="form-group">
    <label for="lname">Last Name</label>
    <input type="text" class="form-control" name="lname" id="lname"  value="<%=lname%>">
  </div>

  <div class="form-group">
    <label for="phone">Phone Number</label>
    <input type="text" class="form-control" id="phone"  name="phone" aria-describedby=""  value="<%=phone%>">
  </div>




  <div class="form-group">
    <label for="NIC">NIC</label>
    <input type="text" class="form-control"  name="nic" id="nic" aria-describedby="" readonly value="<%=nic%>">
  </div>


 <div class="form-group">
    <label for="worked">Enter Hours Worked</label>
    <input type="text" class="form-control"  name="worked" id="worked" aria-describedby="" >
  </div>




 


  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary">Add Worked Hours</button>
</form>




	</div>


		<br>
		<br>	
		<br>	
		<br>	
		<br>



</body>
</html>
