<%@ page import="com.smd.model.Customer"%><!--Import Customer class-->
<%@ page import="com.smd.service.CusDetailsServiceImpl"%><!-- Import Database connection of CusDetailsServiceImpl -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--checking user logged or not -->
<!-- creating array to get data from database -->
<%
if (request.getSession().getAttribute("Logged") == null) {
	request.getSession().setAttribute("Logged", "Guest");
}

CusDetailsServiceImpl dbc = new CusDetailsServiceImpl();
Customer[] cusDetails = dbc.inactiveCustomers();
request.setAttribute("data", cusDetails);
%>

<div class="row">
	<div class="col-2">
		<jsp:include page="./VerticalNavBar.jsp"></jsp:include>
	</div>
	<div class="col-10 pr-3 pt-2 pb-2">
		<jsp:include page="./cDetailsHnav.jsp"></jsp:include>
		<div class="row pt-3 table-responsive-md">
			<div style = "color:red;" class="d-flex justify-content-center">
				<h4>Inactive Customer List</h4>
			</div>
			<table id="table" class="display nowrap" style="width:100%">
		        <thead>
		            <tr>
		            	<th>Cus. ID</th>
		                <th>First Name</th>
		                <th>Last Name</th>
		                <th>Shop Name</th>
		                <th>NIC</th>
		                <th>Telephone</th>
		                <th>E-mail</th>
		                <th>Address</th>
		                <th>Status</th>
		            </tr>
		        </thead>
		        <tbody>
		          	<c:forEach items="${data}" var="Customer"> 
		           		<tr>
				    	 	<td><c:out value="${Customer.getCusID()}" /></td>
				    	 	<td><c:out value="${Customer.getFname()}" /></td>
				    	 	<td><c:out value="${Customer.getLname()}" /></td>
				    	 	<td><c:out value="${Customer.getHardwareName()}" /></td>
				    	 	<td><c:out value="${Customer.getNIC()}" /></td>
				    	 	<td><c:out value="${Customer.getPhoneNo()}" /></td>
				    	 	<td><c:out value="${Customer.getEmail()}" /></td>
				    	 	<td><c:out value="${Customer.getAddress()}" /></td>
				    	 	<td>
				    	 		<form action="../../activate" method="post">
			    	 				<button type = "submit" name="btn" class="btn btn-success" 
			    	 				value="${Customer.getCusID()}">Activate</button>
			    	 				<!--  <button type = "submit" name="btn" class="btn btn-danger" 
			    	 				value="delete">Delete</button>-->
			    	 			</form>
			    	 		</td>
			    	 	</tr>
		   			</c:forEach> 
		        </tbody>
		    </table>
		</div>
	</div>
</div>