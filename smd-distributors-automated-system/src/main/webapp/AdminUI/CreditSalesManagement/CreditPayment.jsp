<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CustomerDuePayment</title>
</head>
<body>
<jsp:include page="../../WEB-INF/views/common/head.jsp"></jsp:include>
<jsp:include page="../../WEB-INF/views/common/header.jsp"></jsp:include>
<div class="row">
  <div class="col-3" style="background-color:#E0E0E2;">
    <!-- Tab navs -->
    <div
      class="nav flex-column nav-tabs text-center"
      id="v-tabs-tab"
      role="tablist"
      aria-orientation="vertical"
    >
      <a
        class="nav-link"
        id="v-tabs-home-tab"
        data-mdb-toggle="tab"
        href="#v-tabs-home"
        role="tab"
        aria-controls="v-tabs-home"
        aria-selected="true"
        >Home</a
      >
      <a
        class="nav-link"
        id="v-tabs-profile-tab"
        data-mdb-toggle="tab"
        href="#v-tabs-profile"
        role="tab"
        aria-controls="v-tabs-profile"
        aria-selected="false"
        >Customer details</a
      >
      <a
        class="nav-link"
        id="v-tabs-messages-tab"
        data-mdb-toggle="tab"
        href="#v-tabs-messages"
        role="tab"
        aria-controls="v-tabs-messages"
        aria-selected="false"
        >cash calculators</a
      >
  
    </div>
   </div>

  <div class="col-9">
  			<center><h5>Customer Aged Recivable</h5></center>
  
    <table class="table table-hover">
 
  <thead>
    <tr>
     
      <th scope="col">Customer</th>
      <th scope="col">Invoice ID</th>
      <th scope="col">Date</th>
      <th scope="col">Product Code</th>
      <th scope="col">Quantity</th>
      <th scope="col">Total Amount</th>
      <th scope="col">Balance</th>
      
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
    </tr>
  </tbody>
</table>
<form>
<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Customer ID</label>
  <input type="text" class="form-control" id="formGroupExampleInput">
</div>
<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Amount</label>
  <input type="text" class="form-control" id="formGroupExampleInput">
</div>
<button type="submit" class="btn btn-primary">Pay</button>
</form>
  </div> <!--  Code Here -->
  	
</div>

<jsp:include page="../../WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>