<div class="row">
	<div class="col-2">
		<jsp:include page="./customerAdminNavBar.jsp"></jsp:include>
	</div>
	<div class="col-10 pt-2 pb-2">
		<jsp:include page="./cDetailsHnav.jsp"></jsp:include>
		<div class="pt-3 table-responsive-md">
				<table id="table" class="display nowrap" style="width:100%">
			        <thead>
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
			        <tbody><!-- 
			          	<c:forEach items="${data}" var="customers"> 
			           		<tr>
					    	 	<td><c:out value="${Customer.getCusID()}" /></td>
					    	 	<td><c:out value="${Customer.getFname()}" /></td>
					    	 	<td><c:out value="${Customer.getLname()}" /></td>
					    	 	<td><c:out value="${Customer.getHardwareName()}" /></td>
					    	 	<td><c:out value="${Customer.getUsername()}" /></td>
					    	 	<td><c:out value="${Customer.getNIC()}" /></td>
					    	 	<td><c:out value="${Customer.getPhoneNo()}" /></td>
					    	 	<td><c:out value="${Customer.getEmail()}" /></td>
					    	 	<td><c:out value="${Customer.getAddress()}" /></td>
				    	 	</tr>
			   			</c:forEach> -->
			        </tbody>
			    </table>
			</div>
	</div>
</div>