
<div class="container-fluid"
	style="padding-top: 1rem; background-color: rgb(124, 122, 122); padding-bottom: 0.5rem;">
	<div class="row">
		<div class="col-sm">
			<div class="form-inline">
				<div>
					<img src=<%=request.getContextPath() + "/img/Logo.png"%>
						height="50" width="50" />
				</div>
				<div
					style="padding-left: 2rem; font-size: 1.5rem; font-family: 'Noto Serif', serif;">
					SMD Distributors</div>
			</div>
		</div>
		<div class="col-sm">
			<div class="input-group mb-3">
				<input type="text" class="form-control" aria-label="Default"
					aria-describedby="inputGroup-sizing-default" />
				<div class="input-group-prepend">
					<span class="input-group-text" id="inputGroup-sizing-default"><i
						class="bi bi-search"></i></span>
				</div>
			</div>
		</div>
		<div class="col-sm d-flex justify-content-end">
			<div class="form-inline">
				<i class="bi bi-person-circle"
					style="font-size: 2.5rem; padding-right: 1.5rem"></i>
				<div>
					<button type="button" class="btn btn-outline-danger">LogOut</button>
				</div>
			</div>
		</div>
	</div>
</div>