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
Customer[] cusDetails = dbc.activeCustomers();
request.setAttribute("data", cusDetails);

int active = 0;
active = dbc.getActiveCustomerCount();
request.setAttribute("active", active);
%>

<div class="row">
	<div class="col-2">
		<jsp:include page="./VerticalNavBar.jsp"></jsp:include>
	</div>
	
	<div class="col-10 pr-3 pt-2 pb-5">
		<jsp:include page="./cDetailsHnav.jsp"></jsp:include>
		<div class="row pt-2">
			<div class="col-9 pt-2 table-responsive-md">
				<div class="d-flex justify-content-center">
					<h4>Customer List</h4>
				</div>
				<div class="d-flex justify-content-start">
					<p>No.of Customers : <c:out value="${active}" /> </p>
				</div>
				<table id="table" class="table display nowrap table-bordered" style="width:100%">
			        <thead class="thead-dark">
			            <tr>
			            	<th>Cus ID</th>
			                <th>First Name</th>
			                <th>Last Name</th>
			                <th>Shop Name</th>
			                <th>NIC</th>
			                <th>Telephone</th>
			                <th>E-mail</th>
			                <th>Address</th>
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
				    	 	</tr>
			   			</c:forEach>
			        </tbody>
			    </table>
			</div>
			
			<div class="col-3">
				<form action="../../adminUpdate" method="Post" class="border border-3 p-2">
	                <fieldset>
	                    <legend class="d-flex justify-content-center">Customer Details</legend>
	                    <div>
	                    	<label for="Customer_ID">Cus_No :</label><br>
	                        <input type="text" id="cus_id" name="cus_id" size="31" readonly><br>
	                    	
	                        <label for="fname">First Name :</label><br>
	                        <input type="text" id="fname" name="fname" size="31" Required><br>
							
	                        <label for="lname">Last Name :</label><br>
	                        <input type="text" id="lname" name="lname" size="31" Required><br>
	                        
	                        <label for="hname">Shop Name :</label><br>
	                        <input type="text" id="hname" name="hname" size="31" Required><br>
	                        
	                        <label for="nic">NIC :</label><br>
	                        <input type="text" id="nic" name="nic" size="31" Required><br>
	                        
	                        <label for="pno">Telephone :</label><br>
	                        <input type ="tel" id="pno" name="pno" size="31" pattern="[0-9]{11}" Required><br>
							
	                        <label for="email">Email :</label><br>
	                        <input type="email" id="email" name="email" size="31" 
	                        pattern="[a-z 0-9 .+-_%]+@+[a-z 0-9 +-_%]+\.[a-z]{2,3}" Required><br>
							
							<label for="adress">Address :</label><br>
	                        <input type="text" id="address" name="address" size="31" Required><br>
	                    </div>
	                    <div class="d-flex justify-content-around pt-3 pb-2">
	                        <button type="submit" class="btn btn-primary" name="btn" 
	                        	value="update">Update</button>
	                        <button type="submit" name="btn" class="btn btn-danger" 
	                        	value="delete">Delete</button>
	                    </div>
	                </fieldset>
	            </form>
			</div>	
		</div>
	</div>
</div>