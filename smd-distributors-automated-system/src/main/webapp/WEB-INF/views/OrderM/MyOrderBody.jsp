
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col-10">
<table class="table">
  <thead>
    <tr>
     
      <th scope="col">Order ID</th>
       <th scope="col">Customer ID</th>
       <th scope="col">Order Date</th>
       <th scope="col">Order States</th>
       <th scope="col">Total Price</th>
       <th scope="col">Paid Amount}</th>
       <th scope="col">Remain Amount</th>
       <th scope="col">Quantity</th>
       <th scope="col">Product ID</th>
       <th scope="col">Update</th>
       <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>

 <c:forEach var="orders" items="${orderdetails}">
 
  <tr>
  
  <c:set var="oid" value="${orders.OID}"/>
  <c:set var="cid" value="${orders.CID}"/>
  <c:set var="odate" value="${orders.ODATE}"/>
  <c:set var="ostate" value="${orders.OSTATE}"/>
  <c:set var="tprice" value="${orders.TPRICE}"/>
  <c:set var="pamount" value="${orders.PAMOUNT}"/>
  <c:set var="ramount" value="${orders.RAMOUNT}"/>
  <c:set var="qty" value="${orders.QTY}"/>
  <c:set var="pty" value="${orders.PID}"/>
 

      <th scope="row">${orders.OID}</th> 
      <td>${orders.CID}</td>
      <td>${orders.ODATE}</td>
      <td>${orders.OSTATE}</td>
      <td>${orders.TPRICE}</td>
      <td> ${orders.PAMOUNT}</td>
      <td>${orders.RAMOUNT}</td>
      <td>${orders.QTY}</td>
      <td> ${orders.PID}</td>
      <td>
     
      <c:url value="UpdateOrder.jsp" var="orderupdate">
      <c:param name="oid" value="${oid}"/>
      <c:param name="cid" value="${cid}"/>
      <c:param name="odate" value="${odate}"/>
      <c:param name="ostate" value="${ostate}"/>
      <c:param name="pamount" value="${pamount}"/>
      <c:param name="tprice" value="${tprice}"/>
      <c:param name="ramount" value="${ramount}"/>
      <c:param name="qty" value="${qty}"/>
      <c:param name="pty" value="${pty}"/>
      
     
      </c:url>
      <a href="${orderupdate}">
        <input type="button" name="update" value="update order">
      </a>
    
      
      </td>
      
      <td>
      <c:url value="DeleteOrder.jsp" var="orderdelete">
      <c:param name="oid" value="${oid}"/>
      <c:param name="cid" value="${cid}"/>
      <c:param name="odate" value="${odate}"/>
      <c:param name="ostate" value="${ostate}"/>
      <c:param name="pamount" value="${pamount}"/>
      <c:param name="tprice" value="${tprice}"/>
      <c:param name="ramount" value="${ramount}"/>
      <c:param name="qty" value="${qty}"/>
      <c:param name="pty" value="${pty}"/>
      
     
      </c:url>
      <a href="${orderdelete}">
        <input type="button" name="delete" value="delete order">
      </a>
      
      
      </td>
      
    </tr>
 
 
 </c:forEach>
</tbody>
</table>

</div>
