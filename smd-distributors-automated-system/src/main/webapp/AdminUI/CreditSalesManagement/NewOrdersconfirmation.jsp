<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NewOrdersToConfirm</title>
</head>
<body>
	<jsp:include page="../../WEB-INF/views/common/head.jsp"></jsp:include>
	<jsp:include page="../../WEB-INF/views/common/header.jsp"></jsp:include>
	<div class="row">
		<div class="col-3" style="background-color: #E0E0E2;">
			<!-- Tab navs -->
			<div class="nav flex-column nav-tabs text-center" id="v-tabs-tab"
				role="tablist" aria-orientation="vertical">
				<a class="nav-link" id="v-tabs-home-tab" data-mdb-toggle="tab"
					href="#v-tabs-home" role="tab" aria-controls="v-tabs-home"
					aria-selected="true">Home</a> <a class="nav-link"
					id="v-tabs-profile-tab" data-mdb-toggle="tab"
					href="#v-tabs-profile" role="tab" aria-controls="v-tabs-profile"
					aria-selected="false">Customer details</a> <a
					class="nav-link" id="v-tabs-messages-tab" data-mdb-toggle="tab"
					href="#v-tabs-messages" role="tab" aria-controls="v-tabs-messages"
					aria-selected="false">cash calculators</a>

			</div>
		</div>

		<div class="col-9">
			<table class="table table-hover">

				<thead>
					<tr>

						<th scope="col">Date</th>
						<th scope="col">Customer</th>
						<th scope="col">Quantity</th>
						<th scope="col">Price</th>
						<th scope="col">Total Amount</th>

					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td><button type="button" class="btn btn-secondary"
								style="background-color: #b8b8b8">Customer Details</button>
							<br>
							<button type="button" class="btn btn-secondary"
								style="background-color: #b8b8b8">Accept</button>
							<br>
							<button type="button" class="btn btn-secondary"
								style="background-color: #b8b8b8">Decline</button></td>

					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<!--  Code Here -->

	</div>

	<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>