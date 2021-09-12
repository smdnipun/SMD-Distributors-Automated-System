<div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
	<div class="card card0 border-0">
		<div class="row d-flex">
			<div class="col-lg-6 d-flex mt-5 mb-5">
				<div class="card1 my-auto w-100 pt-5 pb-5">
					<div class="row justify-content-center mt-5 mb-5 border-line">
						<img src=<%=request.getContextPath() + "/img/login.jpg"%> class="image">
					</div>
				</div>
			</div>
			<div class="col-lg-6 d-flex mt-5 mb-5">
				<div class="card px-4 py-4 my-auto mx-auto w-75">
					<div class="row justify-content-center">
						<img src=<%=request.getContextPath() + "/img/Logo.png"%> class="logo">
						<h5 class="ml-4 mt-3">OTP Code Verification</h5>
					</div>
					<form action="./UserVerifyCode" method="post">
						<div style = "color:red;" class="mb-0 text-sm row">
	                    	<p class = "otp_err">
	                    		<%=request.getAttribute("otp_err") == null ? "" : request.getAttribute("otp_err") %>
	                    	</p>
	                    </div>
						<div class="row px-3">
							<label for="OTP" class="mb-3">
								<h6 class="mb-0 text-sm">Enter OTP code sent your Email Address.</h6>
							</label> 
							<input class="mb-4" type="number" name="otp" placeholder="Enter OTP Code" Required pattern="[0-9]{6}">
						</div>
						<div class="row mb-3 px-3 mt-2">
							<button type="submit" value="login" class="btn btn-blue text-center">Verify</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="bg-blue py-4">
			<div class="row px-3">
				<small class="ml-4 ml-sm-5 mb-2">Copyright &copy; 2021. All rights reserved.</small>
			</div>
		</div>
	</div>
</div>