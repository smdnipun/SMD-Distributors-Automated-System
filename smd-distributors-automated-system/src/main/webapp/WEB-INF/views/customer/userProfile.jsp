<%@ page import="com.smd.model.OrderSummary"%><!--Import orderSummary class-->
<%@ page import="com.smd.model.PaySummary"%><!-- Import PaySummary class -->
<%@ page import="com.smd.service.CusDetailsServiceImpl"%><!-- Import Database connection of CusDetailsServiceImpl -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- creating array to get data from database -->
<%
//getting the id from the session
int id = Integer.parseInt(request.getSession().getAttribute("CustomerID").toString());
//creating an object from the CusDetailsServiceImpl class
CusDetailsServiceImpl dbc = new CusDetailsServiceImpl();

//retrieve order Summary
OrderSummary[] orderDetails = dbc.getOrderDetails(id);
request.setAttribute("orderDeatils", orderDetails);

//retrieve payment summary
PaySummary[] payDetails = dbc.getPaymentDetails(id);
request.setAttribute("payDetails",payDetails);
%>

<div class="row">
	<div class="col-2">
		<jsp:include page="./customerUInavBar.jsp"></jsp:include>
	</div>
	<div class="col-10 pr-3 pt-2 pb-2">
		<div class="main">
	        <div class="covermain mt-2">
	            <img src="./img/avatar.png" height="100" width="100" class="propic">
	            <div class="pt-2">
	            	<h5>
	            		<p id="username"><%=request.getSession().getAttribute("Hname")%></p>
	            	</h5>
	            </div>
	        </div>
	        <h4>Order summary</h4>
	        <div class="row mt-1">
	        	<table id="Order_table" class="table display nowrap table-bordered" style="width:100%">
			        <thead class="thead-dark">
			            <tr>
			            	<th>Invoice No.</th>
			                <th>Order Date</th>
			                <th>Product</th>
			                <th>Quantity</th>
			                <th>Order Status</th>
			                <th>Inv. Amount</th>
			                <th>Paid</th>
			                <th>Balance</th>
			            </tr>
			        </thead>
			        <tbody>
			          	<c:forEach items="${orderDeatils}" var="OrderSummary"> 
			           		<tr>
					    	 	<td><c:out value="${OrderSummary.getOid()}" /></td>
					    	 	<td><c:out value="${OrderSummary.getoDate()}" /></td>
					    	 	<td><c:out value="${OrderSummary.getpName()}" /></td>
					    	 	<td><c:out value="${OrderSummary.getQty()}" /></td>
					    	 	<td><c:out value="${OrderSummary.getoStatus()}" /></td>
					    	 	<td><c:out value="${OrderSummary.getTotal()}" /></td>
					    	 	<td><c:out value="${OrderSummary.getAmountPaid()}" /></td>
					    	 	<td><c:out value="${OrderSummary.getBalance()}" /></td>
				    	 	</tr>
			   			</c:forEach>
			        </tbody>
			    </table>
	        </div>
	        <div class = "row mt-2">
	        	<h4>Payment Summary</h4>
	        	<table id="Payment_table" class="table display nowrap table-bordered" style="width:100%">
			        <thead class="thead-dark">
			            <tr>
			            	<th>Receipt ID</th>
			            	<th>Invoice No.</th>
			                <th>Date</th>
			                <th>Amount</th>
			            </tr>
			        </thead>
			        <tbody>
			          	<c:forEach items="${payDetails}" var="PaySummary"> 
			           		<tr>
					    	 	<td><c:out value="${PaySummary.getRecieptID()}" /></td>
					    	 	<td><c:out value="${PaySummary.getInvoiceID()}" /></td>
					    	 	<td><c:out value="${PaySummary.getDate()}" /></td>
					    	 	<td><c:out value="${PaySummary.getPaidAmount()}" /></td>
				    	 	</tr>
			   			</c:forEach>
			        </tbody>
			    </table>
	        </div>
		</div>
	</div>
</div>