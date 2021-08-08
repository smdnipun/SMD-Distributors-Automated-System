<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" />

<!--fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Serif&display=swap"
	rel="stylesheet" />

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<!--MDB Kit-->
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.css"
	rel="stylesheet" />

<!-- MDB -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.js"></script>

<style>
.square {
	height: 50px;
	width: 50px;
	background-color: black;
}
</style>
</head>
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