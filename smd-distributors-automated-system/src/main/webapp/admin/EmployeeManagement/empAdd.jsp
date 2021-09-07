<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
<body>
	<jsp:include page="../../WEB-INF/views/common/header.jsp"></jsp:include>
	<jsp:include page="../../WEB-INF/views/common/navbar.jsp">
		<jsp:param name="navs" value="ttt,ffff ddddd,fff"  />
	</jsp:include> 
	
	<div>
	<form action="#" method="post">
  <div class="form-group">
    <label for="fname">First Name</label>
    <input type="text" class="form-control" id="fname" aria-describedby="" placeholder="Enter First name">
  </div>
  
  <div class="form-group">
    <label for="lname">Last Name</label>
    <input type="text" class="form-control" id="lname" placeholder="">
  </div>
  
  <div class="form-group">
    <label for="phone">Phone Number</label>
    <input type="text" class="form-control" id="phone" aria-describedby="" placeholder="Enter phone number">
  </div>
  
  <div class="form-group">
    <label for="Username">Username</label>
    <input type="text" class="form-control" id="uname" aria-describedby="" placeholder="">
  </div>
  
  
  <div class="form-group">
    <label for="passowrd">Password</label>
    <input type="password" class="form-control" id="pwd" aria-describedby="" placeholder="">
  </div>
  
   
  <div class="form-group">
    <label for="NIC">NIC</label>
    <input type="text" class="form-control" id="nic" aria-describedby="NIC" placeholder="">
  </div>
  
   
  <div class="form-group">
    <label for="email">Email</label>
    <input type="email" class="form-control" id="email" aria-describedby="" placeholder="">
  </div>
  
  
   
  <div class="form-group">
    <label for="exampleInputEmail1">Address</label>
    <input type="text" class="form-control" id="add" aria-describedby="" placeholder="">
  </div>
  

  <div class="input-group mb-3">
  <div class="input-group-prepend">
    <label class="input-group-text" for="inputGroupSelect01">Employee Type</label>
  </div>
  <select class="custom-select" id="option">
    <option selected>Select.</option>
    <option value="1">Driver</option>
    <option value="2">Cash Collector</option>
    <option value="3">Labor</option>
  </select>
</div>
  
  
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
	
	
	
	
	</div>
	
	
		<br>
		<br>	
		<br>	
		<br>	
		<br>
	
	

</body>
</html>



