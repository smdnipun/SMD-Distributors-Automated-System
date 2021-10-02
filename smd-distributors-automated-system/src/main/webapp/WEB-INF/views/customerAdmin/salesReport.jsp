<%@ page import="com.smd.model.BestCustomers"%><!--Import Customer class-->
<%@ page import="com.smd.service.ICustomerDetails"%>
<%@ page import="com.smd.service.CusDetailsServiceImpl"%><!-- Import Database connection of CusDetailsServiceImpl -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- creating array to get data from database -->
<%
CusDetailsServiceImpl dbc = new CusDetailsServiceImpl();
BestCustomers[] cusDetails = dbc.getBestCus();
request.setAttribute("data", cusDetails);
%>

<div class="row">
	<div class="col-2">
		<jsp:include page="./VerticalNavBar.jsp"></jsp:include>
	</div>
	<div class="col-10 pr-3 pt-2 pb-4">
		<jsp:include page="./cReportHnav.jsp"></jsp:include>
		<div class="row pt-2 table-responsive-md pl-3 pb-2 mr-1">
			<div class="d-flex justify-content-center">
				<h4>Best Customers</h4>
			</div>
			<form action="../../PDFbestCus" method="post" class="pb-3">
				<div class="row">
					<div class="col-9">
						<label for="date">Date</label>
						<input type="month" id="month" name="month">
					</div>
					<div class="col-3">
						<div class="d-flex justify-content-end">
							<button type = "submit" name="btn" class="btn btn-success" value="">Generate Report</button>
						</div>
					</div>
				</div>
			</form>
			<table id="Order_table" class="table display nowrap table-bordered" style="width:100%">
		        <thead class="thead-dark">
		            <tr>
		            	<th scope="col">Cus.No</th>
		                <th scope="col">Hardware Name</th>
		                <th scope="col">Phone No</th>
		                <th scope="col">Address</th>
		                <th scope="col">Date</th>
		                <th scope="col">Quantity</th>
		            </tr>
		        </thead>
		        <tbody>
		          	<c:forEach items="${data}" var="Customer"> 
		           		<tr>
				    	 	<td scope="row"><c:out value="${Customer.getId()}" /></td>
				    	 	<td><c:out value="${Customer.getHname()}" /></td>
				    	 	<td><c:out value="${Customer.getPhoneNo()}" /></td>
				    	 	<td><c:out value="${Customer.getAddress()}" /></td>
				    	 	<td><c:out value="${Customer.getMonth()}" /></td>
				    	 	<td><c:out value="${Customer.getQty()}" /></td>
			    	 	</tr>
		   			</c:forEach>
		   		</tbody>  
		    </table>
		</div>
	</div>
</div>