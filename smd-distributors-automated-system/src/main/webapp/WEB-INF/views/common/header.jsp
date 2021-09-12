<div class="container-fluid pt-1"
	style="background-color: #000000; padding-bottom: 0.5rem; position: sticky; top: 0; z-index: 100;">
	<div class="row">
		<div class="col-sm form-inline mt-0">
			<div>
				<img src=<%=request.getContextPath() + "/img/Logo.png"%> height="50"
					width="50" />
			</div>
			<div
				style="color: #ffffff; padding-left: 2rem; font-size: 1.5rem; font-family: 'Noto Serif', serif;">
				SMD Distributors</div>
		</div>
		<div class="col-sm mt-3">
			<%
			if (request.getServletPath().equals("/index.jsp")) {
			%>
			<div class="input-group mb-3">
				<form action="search" method="post">
					<input type="text" class="form-control" aria-label="Default"
						aria-describedby="inputGroup-sizing-default" name="search"/>
					<div class="input-group-prepend">
						<button type="submit" class="input-group-text" id="inputGroup-sizing-default"><i
							class="bi bi-search"></i></button>
					</div>
				</form>
			</div>
			<%
			}
			%>
		</div>
		<div class="col-sm d-flex justify-content-end">
			<div class="mr-3 mt-4" style="color: white;">
				<h6><%=request.getSession().getAttribute("Hname")%></h6>
			</div>
			<div class="mt-1">
				<a href=<%=request.getContextPath() + "/Profile.jsp"%>> <i
					class="bi bi-person-circle"
					style="font-size: 2.5rem; padding-right: 1.5rem"></i>
				</a>
			</div>
			<div style="padding-right: 1.5rem" class="pt-3 mr-0 ml-0">
				<form action="logout" method="post">
					<button type="submit" class="btn btn-outline-danger">LogOut</button>
					<!--  -->
				</form>
			</div>
		</div>
	</div>
</div>
<button type="button" class="btn btn-secondary btn-floating btn-lg"
	id="btn-back-to-top"
	style="position: fixed; bottom: 20px; right: 20px; display: none;">
	<i class="fas fa-arrow-up"></i>
</button>