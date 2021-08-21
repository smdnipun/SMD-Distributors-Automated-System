<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="col-10">
<table class="table">
  <thead>
    <tr>
       <th scope="col">Order ID</th>
       <th scope="col">Total Price</th>
       <th scope="col">Total Quantity</th>
    </tr>
  </thead>
  <tbody>

 <c:forEach var="morder" items="${monthlyorder}">
 
  <tr>
   <c:set var="tqty" value="${morder.getTQTY()}"/>
  <c:set var="pid" value="${morder.getPID()}"/>
  <c:set var="tprice" value="${morder.getTPRICE()}"/>
    
 

  
 
 

      <th scope="row">${morder.getPID()}</th>
      <td>${morder.getTPRICE()}</td>
      <td>${morder.getTQTY()}</td>
    
     
      
    </tr>
 
 
 </c:forEach>
</tbody>
</table>

</div>
</body>
</html>


