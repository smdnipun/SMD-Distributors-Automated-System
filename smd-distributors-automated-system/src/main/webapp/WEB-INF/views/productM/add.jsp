<div class="row">
	<jsp:include page="../common/navbar.jsp">
		<jsp:param name="navs" value="View All Products,all.jsp_ddddd,fff_ddddd,fff" />
	</jsp:include>
	<div class="col-10 my-auto">
		<form action="../../addProduct" method="post" enctype="multipart/form-data">
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
						<label>Product Price</label> <input name="pprice" size="10"
							type="number" />
					</div>
					<!--<div class="form-inline">
						<label>Product Availability</label> <label class="switch">
							<input type="checkbox" checked> <span
							class="slider round"></span>
						</label>
					</div>-->
				</div>
				<div class="col-8">
					<div class="px-4">
						<div style="border: 3px solid; border-radius: 30px"
							class="px-5 py-3">
							<div class="h5 text-center pb-2 pt-1">Product Image</div>
							<div class="row gy-1" id="addImages">
								<!--<div class="col-2">
									<span class="buttonBox d-flex justify-content-center"
										onclick="addUpload()">
										<h1 class="my-auto display-4">+</h1>
									</span>
								</div>-->
								<!--<input type="file" name="image"/>-->
							</div>
						</div>
					</div>
				</div>
				<button type="submit">Add</button>
			</div>
		</form>
	</div>
</div>
<!--<script>
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
	async function uploadFile() {
	    let formData = new FormData();           
	    formData.append("file", fileupload.files[0]);
	    await fetch('/upload.php', {
	      method: "POST", 
	      body: formData
	    });    
	    alert('The file has been uploaded successfully.');
	}
</script>-->