<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../WEB-INF/views/head.jsp"></jsp:include>
<div>
	<!--  <form action="login" method="post">
		<fieldset>
		    <div class="formtop">
		        <span>Sign in or <a href="User/Registration1.jsp" class="link">Create an Account</a></span>
		    </div><br>
		    <div>
		        <label for="email">EMAIL ADDRESS:</label><br>
		        <input type="text" id="email" name="email" size="48" value=""><br><br>
		
		        <label for="password">PASSWORD :</label><br>
		        <input type ="password" id="password" name="password" size="48"><br>
		    </div>
		    <div>
		        <a href="User/forgot_password1.jsp" class="link">Forgot Password?</a>
		    </div>
		    <div class='center'>
		    	<div style = "color:red;"><p>${Message}</p></div>
		        </div>
		        <div class="center">
		            <button type="submit" id="login" class="greenbtn btn">sign in</button> 
		        </div>    
		</fieldset>
	</form>-->
	<main>
    <div class="container-fluid">
      <div class="row">
        <div class="col-6 login-section-wrapper">
          <div class="brand-wrapper">
            <img src="../img/Logo.png" alt="logo" class="logo" height="150" width="150">
          </div>
          <div class="login-wrapper my-auto">
            <h1 class="login-title">Log in</h1>
            <form action="login" method="post">
              <div class="form-group">
                <label for="email">Email</label>
                <input type="email" name="email" id="email" class="form-control" placeholder="email@example.com">
              </div>
              <div class="form-group mb-4">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" class="form-control" placeholder="Enter your passsword">
              </div>
              <input name="login" id="login" class="btn btn-block login-btn btn-warning" type="button" value="Login">
            </form>
            <a href="#!" class="forgot-password-link">Forgot password?</a>
            <p class="login-wrapper-footer-text">Don't have an account? <a href="#!" class="text-reset">Register here</a></p>
          </div>
        </div>
        <div class="col-6 px-0">
          <img src="../img/login2.png" alt="login image" style="height:auto; max-width:100%;">
        </div>
      </div>
    </div>
  </main>
</div>
</body>
</html>