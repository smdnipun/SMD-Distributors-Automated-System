<div class="row">
	<div class="col-2">
		<jsp:include page="./customerAdminNavBar.jsp"></jsp:include>
	</div>
	
	<div class="col-10 pr-3 pt-2 pb-2">
		<jsp:include page="./cDetailsHnav.jsp"></jsp:include>
		<div class="row pt-2">
			<div class="col-9 border border-3 pt-3 table-responsive-md">
				<table id="table" class="display nowrap" style="width:100%">
        <thead>
            <tr>
            	<th>Cus ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Shop Name</th>
                <th>Username</th>
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
			
			<div class="col-3">
			<form action="" method="Post" class="border border-3 p-2">
                <fieldset>
                    <legend class="d-flex justify-content-center">Customer Details</legend>
                    <div>
                    	<label for="Customer_ID">Cus_No :</label><br>
                        <input type="text" id="cus_id" name="cus_id" size="31" disabled><br>
                    
                        <label for="fname">First Name :</label><br>
                        <input type="text" id="fname" name="fname" size="31"><br>

                        <label for="lname">Last Name :</label><br>
                        <input type="text" id="lname" name="lname" size="31"><br>
                        
                        <label for="hname">Shop Name :</label><br>
                        <input type="text" id="hname" name="hname" size="31"><br>
                        
                        <label for="hname">Username :</label><br>
                        <input type="text" id="username" name="username" size="31"><br>
                        
                        <label for="nic">NIC :</label><br>
                        <input type="number" id="nic" name="nic" size="31"><br>
                        
                        <label for="pno">Telephone :</label><br>
                        <input type ="tel" id="pno" name="pno"  size="31" pattern="[0-9]{11}"><br>

                        <label for="email">Email :</label><br>
                        <input type="email" id="email" name="email" size="31" pattern="[a-z 0-9 .+-_%]+@+[a-z 0-9 +-_%]+\.[a-z]{2,3}"><br>

						<label for="adress">Address :</label><br>
                        <input type="text" id="adress" name="address" size="31"><br>
                    </div>
                    <div class="d-flex justify-content-around pt-3 pb-2">
                        <button type="submit" id="updateD" class="btn btn-primary">Update</button>
                        <button type="submit" id="DeleteC" class="btn btn-danger">Delete</button>
                    </div>
                </fieldset>
            </form>
			</div>	
		</div>
	</div>
</div>