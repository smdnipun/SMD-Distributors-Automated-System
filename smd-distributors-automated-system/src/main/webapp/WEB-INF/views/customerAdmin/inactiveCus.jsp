<%@ page import="com.smd.model.Customer"%><!--Import Customer class-->
<%@ page import="com.smd.service.ICustomerDetails"%>
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
		<div class="row pt-3 table-responsive-md pr-2 pl-3 pb-2">
			<div style = "color:red;" class="d-flex justify-content-center">
				<h4>Inactive Customer List</h4>
			</div>
			<form action="../../SearchInactiveCustomers" class="d-flex mb-3 mt-3 pr-5 justify-content-end" method="post">
					<h6 class="ml-3 pt-1"> Search Hardware :</h6>
					<input type="text" size="20" name="search" placeholder="Enter Hardware Name" class="ml-3" />
					<button type="submit" class="">
						<i class="bi bi-search"></i>
					</button>
			</form>
			<table id="table" class="table display nowrap" style="width:100%">
				<c:choose>
					<c:when test="${param.search==null}">
						<%
							CusDetailsServiceImpl con = new CusDetailsServiceImpl();
							Customer[] details = con.inactiveCustomers();
							request.setAttribute("details", details);
						%>
				        <thead class="thead-dark">
				            <tr>
				            	<th scope="col">Cus. ID</th>
				                <th scope="col">First Name</th>
				                <th scope="col">Last Name</th>
				                <th scope="col">Shop Name</th>
				                <th scope="col">NIC</th>
				                <th scope="col">Telephone</th>
				                <th scope="col">E-mail</th>
				                <th scope="col">Address</th>
				                <th scope="col">Status</th>
				            </tr>
				        </thead>
				        <tbody>
				          	<c:forEach items="${data}" var="Customer"> 
				           		<tr>
						    	 	<td scope="row"><c:out value="${Customer.getCusID()}" /></td>
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
			   		</c:when>
			   		<c:otherwise>
			   			<%
							ICustomerDetails con = new CusDetailsServiceImpl();
							Customer[] searchHw = con.search(request.getParameter("search"));
							request.setAttribute("searchData", searchHw);
						%>
						<thead class="thead-dark">
			            <tr>
			            	<th scope="col">Cus. ID</th>
				                <th scope="col">First Name</th>
				                <th scope="col">Last Name</th>
				                <th scope="col">Shop Name</th>
				                <th scope="col">NIC</th>
				                <th scope="col">Telephone</th>
				                <th scope="col">E-mail</th>
				                <th scope="col">Address</th>
				                <th scope="col">Status</th>
			            </tr>
				        </thead>
				        <tbody>
				          	<c:forEach items="${searchData}" var="Customer"> 
				           		<tr>
						    	 	<td scope="row"><c:out value="${Customer.getCusID()}" /></td>
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
			   		</c:otherwise>
			   	</c:choose>     
		    </table>
		</div>
	</div>
</div>