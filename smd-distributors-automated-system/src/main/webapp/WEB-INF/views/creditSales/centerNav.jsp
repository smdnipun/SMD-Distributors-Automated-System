<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.LinkedList"%>
<%@ page import="com.smd.model.PaymentDetails"%>
<%@ page import="com.smd.service.CreditSalesM"%>

<div class="pt-2">
	<nav class="navbar navbar-expand-lg navbar-light"
		style="background-color: #d7d7d7;">
		<div class="container-fluid">
			<button class="navbar-toggler" data-bs-toggle="collapse"
				data-bs-target="#navbarTogglerDemo01"
				aria-controls="navbarTogglerDemo01" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarTogglerDemo01">

				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link"
						href="CustomerAged.jsp">Credit Sales</a></li>
					<li class="nav-item"><a class="nav-link"
						href="NewOrdersconfirmation.jsp">New Orders</a></li>
					<li class="nav-item"><a class="nav-link"
						href="CreditPayment.jsp">Payments</a></li>
					<li class="nav-item"><a class="nav-link"
						href="PaymentHistory.jsp">Payments History</a></li>

				</ul>
				<form action="../../PaymentSearch" class="d-flex" method="post">
					<input type="text" size="50" name="search" />
					<button type="submit" class="">
						<i class="bi bi-search"></i>
					</button>
				</form>

			</div>
		</div>
	</nav>
</div>