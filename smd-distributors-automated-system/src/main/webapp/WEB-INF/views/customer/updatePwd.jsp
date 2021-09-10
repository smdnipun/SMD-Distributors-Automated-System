<%
if (request.getSession().getAttribute("Logged") == null) {
	request.getSession().setAttribute("Logged", "Guest");
}
%>

<div class="row">
	<div class="col-2">
		<jsp:include page="./customerUInavBar.jsp"></jsp:include>
	</div>
	<div class="col-lg-10 pr-3 pt-2 pb-5">
		<div class="d-flex justify-content-around">
			<div class="mt-2 mb-3">
				<h3>Sign in and Security</h3>
			</div>
		</div>
		<div class="row card px-4 py-4 my-auto mx-auto w-50">
			<form action="changePwd" method="post" onsubmit="return checkPwd()">
				<label for="currentpwd" class="mt-2 mb-0 ml-2 mr-3">Current Password :</label>
				<input type="password" id="password" name="currentpwd" size="40" class="ml-4" Required><br>
				
				<label for="newpwd" class="mt-2 mb-0 ml-2 mr-3">New password :</label>
				<input type="password" id="pwd" name="pwd"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" size="40"
				title="Must contain at least one  number and one uppercase and lowercase letter, and at least 6 or more characters"
				class="ml-5" Required><br>
				
				<label for="reenterpwd" class="mt-2 ml-2 mb-0">Re-enter new password :</label>
				<input type="password" id="rpwd" name="rpwd" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" 
				size="40" class="ml-1" Required><br>
         		<div class="d-flex justify-content-center pt-4">
					<div style = "color:red;" class="mt-2 mb-2"><p>${message1}</p></div>
					<div style = "color:red;" class="mt-2 mb-2"><p>${message2}</p></div>
					<button type="submit" name="submit" class="btn btn-success">Update Password</button>
				</div>
			</form>
		</div>
	</div>
</div>