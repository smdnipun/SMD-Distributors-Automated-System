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
			<div class="col-lg-6 d-flex mt-5 mb-5">
					<div class="card px-4 py-4 my-auto mx-auto w-75">
						<div class="row justify-content-center">
							<img src=<%=request.getContextPath() + "/img/Logo.png"%> class="logo">
							<h3 class="ml-4">Login</h3>
						</div>
						<form action="login" method="post">
							<div style = "color:red;" class="mb-0 text-sm row">
		                    	<p class = "login_err">
		                    		<%=request.getAttribute("login_err") == null ? "" : request.getAttribute("login_err") %>
		                    	</p>
		                    </div>
							<div class="row px-3 pt-2">
								<label for="email" class="mb-1">
									<h6 class="mb-0 text-sm">Email Address</h6>
								</label> 
								<input class="mb-4" type="text" name="email" placeholder="Enter a valid email address">
							</div>
							<div class="row px-3">
								<label for="password" class="mb-1">
									<h6 class="mb-0 text-sm">Password</h6>
								</label> 
								<input type="password" name="password" placeholder="Enter password">
							</div>
							<div class="row px-3 mb-4">
								<a href=<%=request.getContextPath() + "/EmailVerification.jsp"%> class="ml-auto mb-0 text-sm">Forgot Password?</a>
							</div>
							<div class="row mb-3 px-3">
								<button type="submit" value="login" class="btn btn-blue text-center">Login</button>
							</div>
						</form>
						<div class="row mb-4 px-3">
							<small class="font-weight-bold">Don't have an account? <a href=<%=request.getContextPath() + "/registration.jsp"%>
								class="text-danger ">Register</a></small>
						</div>
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