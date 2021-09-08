<div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
	<div class="card card0 border-0">
		<div class="row d-flex">
			<div class="col-lg-6 d-flex">
				<div class="card1 my-auto w-100">
					<div class="row justify-content-center mt-4 border-line">
						<img src=<%=request.getContextPath() + "/img/login.jpg"%>
							class="image">
					</div>
				</div>
			</div>
			<div class="col-lg-6 d-flex">
				<div class="card px-4 py-4 my-auto mx-auto w-75">
					<!--<div class="row">
						<img src=<%=request.getContextPath() + "/img/Logo.png"%> class="logo">
					</div>-->
					<div class="row justify-content-center">
						<img src=<%=request.getContextPath() + "/img/Logo.png"%>
							class="logo"> <label class="mb-1">
					</div>
					<div class="row px-3 d-flex">
						<form action="RegisterServlet" method="Post" onsubmit="return checkPw()">
			                <fieldset>
			                    <legend class="mb-0 justify-content-center">Welcome to SMD Distributors!</legend>
			                    <h5>Enter Your Details</h5>
			                    <div style = "color:red;" class="mb-0 text-sm row">
			                    	<!-- <p>${message}</p> -->
			                    	<p class = "register_err">
			                    		<%=request.getAttribute("reg_err") == null ? "" : request.getAttribute("reg_err") %>
			                    	</p>
			                    </div>
			                    <div class="row px-3">
			                        <label for="fname" class="mb-0 text-sm">First Name :</label>
			                        <input type="text" id="fname" name="fname" placeholder="ex:-Saman"
			                        value="" Required>
			
			                        <label for="lname" class="mb-0 text-sm">Last Name :</label>
			                        <input type="text" id="lname" name="lname" placeholder="ex:-Athukorala"
			                        value="" Required>
			                        
			                        <label for="hname" class="mb-0 text-sm">Hardware Name :</label>
			                        <input type="text" id="hname" name="hname" placeholder="ex:-saman Hardware, kandy hardware"
			                        value="" Required>
			
			                        <label for="email" class="mb-0 text-sm">Email :</label>
			                        <input type="email" id="email" name="email" value=""
			                        placeholder="ex:-saman@gmail.com" Required pattern="[a-z 0-9 .+-_%]+@+[a-z 0-9 +-_%]+\.[a-z]{2,3}">
			
			                        <label for="pno" class="mb-0 text-sm">Telephone (Enter Phone number starting from 94):</label>
			                        <input type ="tel" id="pno" name="pno" placeholder="ex:- 94712345678" Required pattern="[0-9]{11}"
			                        value="">
			                        
			                        <label for="nic" class="mb-0 text-sm">NIC No.(Enter nic without the letter):</label>
			                        <input type ="number" id="nic" name="nic" placeholder="ex:-old-987654321 new-199876543210" 
			                        Required pattern="[0-9]{9,}" value="">
                   
			                        <label for="address" class="mb-0 text-sm">Address :</label>
			                        <input type="text" id="address" name="address" placeholder="" 
			                        value="" Required>

			                        <label for="city" class="mb-0 text-sm">City :</label>
			                        <input type="text" id="city" name="city" placeholder="ex:-Kandy" 
			                        value="" Required>
			                        
			                        <label for="State" class="mb-0 text-sm">State/Province :</label><br>
			                        <input type="text" id="state" name="state" placeholder="ex:-Central" 
			                        value="" Required>
			                        
			                        <label for="pwd" class="mb-0 text-sm">Password :</label>
			                        <input type="password" id="pwd" name="pwd" 
			                        title="Must contain at least one  number and one uppercase and lowercase letter, and at least 6 or more characters" Required
			                        pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}">
			                        
			                        <label for="rpwd" class="mb-0 text-sm">Re-enter Password :</label>
			                        <input type="password" id="rpwd" name="rpwd" size="48" title="Six or more characters" Required pattern=".{6,}">
			                        
			                        <input type="checkbox" id="agreeterms" name="agreeterms" value="agree" class="mt-3" onclick='enableButton()'>
			                        <label for="agreeterms">By clicking, I agree to the 
			                        	<a href="">Terms of Use</a> and have read the 
			                        	<a href="">Privacy Statement</a>
			                        </label>
			                    </div>
			                    <div class="d-flex justify-content-center">
			                        <button type="submit" id="submitc" class="btn btn-blue text-center" name="action" value="customer" disabled>Register</button>
			                    </div>
			                </fieldset>
			            </form>
					</div>
				</div>
			</div>
			<div class="bg-blue py-4">
				<div class="row px-3">
					<small class="ml-4 ml-sm-5 mb-2">Copyright &copy; 2021. All
						rights reserved.</small>
				</div>
			</div>
		</div>
	</div>
</div>