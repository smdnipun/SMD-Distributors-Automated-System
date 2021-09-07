<div class="row">
	<div class="col-2">
		<jsp:include page="./customerUInavBar.jsp"></jsp:include>
	</div>
	<div class="col-10 pr-3 pt-2 pb-2">
		<div class="main">
	        <div class="covermain">
	            <img src="./img/avatar.png" height="100" width="100" class="propic">
	            <div class="right">
	                <button class="button mt-2"><a href="edit_cAccount.jsp">Edit account</a></button>
	            </div>
	            <div>
	            	<p id="username">${Customer.getFirstName()}</p>
		            <p>${Customer.getEmail()}</p>
	            </div>
	        </div>
	        
		</div>
	</div>
</div>