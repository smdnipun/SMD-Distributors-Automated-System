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
					<div class="card px-4 py-4 my-auto mx-auto w-100">
						<!--<div class="row">
						<img src=<%=request.getContextPath() + "/img/Logo.png"%> class="logo">
					</div>-->
						<div class="row px-3">
							<img src=<%=request.getContextPath() + "/img/Logo.png"%>
								class="logo"> <label class="mb-1">
								<h6 class="mb-0 text-sm">Email Address</h6>
							</label> <input class="mb-4" type="text" name="email"
								placeholder="Enter a valid email address">
						</div>
						<div class="row px-3">
							<label class="mb-1">
								<h6 class="mb-0 text-sm">Password</h6>
							</label> <input type="password" name="password"
								placeholder="Enter password">
						</div>
						<div class="row px-3 mb-4">
							<a href="#" class="ml-auto mb-0 text-sm">Forgot Password?</a>
						</div>
						<div class="row mb-3 px-3">
							<button type="submit" class="btn btn-blue text-center">Login</button>
						</div>
						<div class="row mb-4 px-3">
							<small class="font-weight-bold">Don't have an account? <a
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