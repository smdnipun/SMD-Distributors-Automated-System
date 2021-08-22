<div class="row">
	<!--<div class="col-2" style="background-color: #E0E0E2;">
		<div class="nav flex-column nav-tabs" id="v-tabs-tab" role="tablist"
			aria-orientation="vertical">
			<a class="nav-link" id="v-tabs-home-tab" data-mdb-toggle="tab"
				href="#v-tabs-home" role="tab" aria-controls="v-tabs-home"
				aria-selected="true">Home</a> <a class="nav-link"
				id="v-tabs-profile-tab" data-mdb-toggle="tab" href="#v-tabs-profile"
				role="tab" aria-controls="v-tabs-profile" aria-selected="false">Profile</a>
			<a class="nav-link" id="v-tabs-messages-tab" data-mdb-toggle="tab"
				href="#v-tabs-messages" role="tab" aria-controls="v-tabs-messages"
				aria-selected="false">Messages</a> <a class="nav-link"
				id="v-tabs-home-tab" data-mdb-toggle="tab" href="#v-tabs-home"
				role="tab" aria-controls="v-tabs-home" aria-selected="true">Home</a>
			<a class="nav-link" id="v-tabs-profile-tab" data-mdb-toggle="tab"
				href="#v-tabs-profile" role="tab" aria-controls="v-tabs-profile"
				aria-selected="false">Profile</a> <a class="nav-link"
				id="v-tabs-messages-tab" data-mdb-toggle="tab"
				href="#v-tabs-messages" role="tab" aria-controls="v-tabs-messages"
				aria-selected="false">Messages</a> <a class="nav-link"
				id="v-tabs-home-tab" data-mdb-toggle="tab" href="#v-tabs-home"
				role="tab" aria-controls="v-tabs-home" aria-selected="true">Home</a>
			<a class="nav-link" id="v-tabs-profile-tab" data-mdb-toggle="tab"
				href="#v-tabs-profile" role="tab" aria-controls="v-tabs-profile"
				aria-selected="false">Profile</a> <a class="nav-link"
				id="v-tabs-messages-tab" data-mdb-toggle="tab"
				href="#v-tabs-messages" role="tab" aria-controls="v-tabs-messages"
				aria-selected="false">Messages</a>
		</div>
	</div>-->
	<jsp:include page="../common/navbar.jsp">
		<jsp:param name="navs" value="View All Products,all.jsp_ddddd,fff_ddddd,fff" />
	</jsp:include>
	<div class="col-10 my-auto">
		<form action="">
			<div class="row">
				<div class="col-4">
					<div class="form-inline">
						<label>Product Name</label> <input name="pname" size="20" />
					</div>
					<div class="form-inline">
						<label>Product Weight</label> <input name="pweight" size="2"
							type="number" />
					</div>
					<div class="form-inline">
						<label>Product Price</label> <input name="pweight" size="10"
							type="number" />
					</div>
					<div class="form-inline">
						<label>Product Availability</label> <label class="switch">
							<input type="checkbox" checked> <span
							class="slider round"></span>
						</label>
					</div>
				</div>
				<div class="col-8">
					<div class="px-4">
						<div style="border: 3px solid; border-radius: 30px"
							class="px-5 py-3">
							<div class="h5 text-center pb-2 pt-1">Product Images</div>
							<div class="row gy-1" id="addImages">
								<div class="col-2">
									<span class="buttonBox d-flex justify-content-center"
										onclick="addUpload()">
										<h1 class="my-auto display-4">+</h1>
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
<script>
	let uploadCount = 0;
	function addUpload() {
		document.getElementById("addImages").innerHTML = `<div class="col-2" id=`+uploadCount+`><div class="box"></div><span class="close" id="close`
				+ uploadCount
				+ `" onclick="deleteElement(`
				+ uploadCount
				+ `)">x</span></div>`
				+ document.getElementById("addImages").innerHTML
		uploadCount++;
	}

	function deleteElement(count) {
		document.getElementById(count).remove();
		document.getElementById("close" + count).remove();
	}
</script>