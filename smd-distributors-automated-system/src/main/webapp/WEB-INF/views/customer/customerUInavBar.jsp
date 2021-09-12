
<div style="background-color: #e4e4e4;">
	<!-- Tab navs -->
	<div class="nav flex-column nav-tabs text-center" id="v-tabs-tab" role="tablist"
		aria-orientation="vertical">
		<a class="nav-link" id="v-tabs-home-tab" data-mdb-toggle="tab"
			href="index.jsp" role="tab" aria-controls="v-tabs-home"
			aria-selected="true">Home</a> 
			
		<a class="nav-link" id="v-tabs-profile-tab" data-mdb-toggle="tab" 
			href="Profile.jsp" role="tab" aria-controls="v-tabs-profile" 
			aria-selected="false">Profile</a>
			
			<a class="nav-link">
		<form action="viewOrderCustomer" method="post">
		<button type="submit" style=" background-color: Transparent;
    background-repeat:no-repeat;
    border: none;
    cursor:pointer;
    overflow: hidden;
    outline:none;">MY ORDERS</button>
		</form>
		</a>
		
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Account Setting
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="background-color: #e4e4e4;">
          <a class="dropdown-item" href="PersonalInfo.jsp">Personal Info</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="Security.jsp">Sign in and Security</a>
        </div>
			
		<a class="nav-link" id="v-tabs-Feedback-tab" data-mdb-toggle="tab"
			href="RequestC/customerServices.jsp" role="tab" aria-controls="v-tabs-Feedback"
			aria-selected="false">Feedback</a> 
			
	</div>
</div>