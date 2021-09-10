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
         String type = request.getParameter("emp_Type");
        
      
      %> 
      
	
	<form action=<%=request.getContextPath() +"/attendemp" %> method="post">
	
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
    <input type="text" class="form-control"  name="worked" id="worked" aria-describedby="" >
  </div>
  


 <div class="form-group">
    <label for="date">Enter Month</label>
    <input type="date" class="form-control"  name="date" id="date" aria-describedby="" >
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
