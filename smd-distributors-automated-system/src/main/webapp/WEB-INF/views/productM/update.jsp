<<<<<<< HEAD
<div class="row">
	<div class="col-2" style="background-color: #E0E0E2;">
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
	</div>
	<div class="col-10 my-auto">
		<div class="row">
			<form action="../../search" method="post">
				<input type="text" size="50" name="serach" />
				<button type="submit" class="">
					<i class="bi bi-search"></i>
				</button>
			</form>
		</div>
		<form action="../../deleteProduct" method="post">
			<div class="row">
				<div class="col-2">
					<label>Product Price</label> <label>Product Price</label> <label>Product
						Price</label> <label>Display Status</label>
				</div>
				<div class="col-2">
					<input name="pname" size="20" /> <input name="pname" size="20" />
					<input name="pname" size="20" /> <label class="switch"> <input
						type="checkbox" checked> <span class="slider round"></span>
					</label>
				</div>
				<div class="col-8">
=======
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.smd.model.Product"%>
<%@ page import="com.smd.service.ProductDB"%>
<div class="row">
	<jsp:include page="../common/navbar.jsp">
		<jsp:param name="navs" value="home,/" />
	</jsp:include>
	<%
	if (request.getParameter("product") != null) {
		ProductDB con = new ProductDB();
		Product product = con.getProductById(Integer.parseInt(request.getParameter("product")));
		request.setAttribute("product", product);
	%>
	<div class="col-10 my-auto">
		<form action="../../updateproduct" method="post">
			<div class="row">
				<div class="col-4">
					<div class="form-inline">
						<label>Product ID</label> <input name="pid" size="20"
							value="${product.getProductID()}" readonly />
					</div>
					<div class="form-inline">
						<label>Product Name</label> <input name="pname" size="20"
							value="${product.getName()}" />
					</div>
					<div class="form-inline">
						<label>Product Weight</label> <input name="pweight" size="2"
							value="${product.getWeight()}" type="number" />
					</div>
					<div class="form-inline">
						<label>Product Price</label> <input name="pprice" size="10"
							value="${product.getPrice()}" type="number" />
					</div>
					<div class="form-inline">
						<label>Product Availability</label> <label class="switch">
							<c:choose>
								<c:when test="${product.getAvailablity()}">
									<input type="checkbox" name="availablity"
										checked="${product.getAvailablity()}">
									<span class="slider round"></span>
								</c:when>
								<c:otherwise>
									<input type="checkbox" name="availablity">
									<span class="slider round"></span>
								</c:otherwise>
							</c:choose>
						</label>
					</div>
				</div>
				<!--<div class="col-8">
>>>>>>> origin/master
					<div class="px-4">
						<div style="border: 3px solid; border-radius: 30px"
							class="px-5 py-3">
							<div class="h5 text-center pb-2 pt-1">Product Images</div>
							<div class="row gy-1">
								<div class="col-2">
									<div class="box"></div>
									<button class="close">x</button>
								</div>
								<div class="col-2">
									<div class="box"></div>
									<button class="close">x</button>
								</div>
								<div class="col-2">
									<div class="box"></div>
									<button class="close">x</button>
								</div>
								<div class="col-2">
									<div class="box"></div>
									<button class="close">x</button>
								</div>
								<div class="col-2">
									<div class="box"></div>
									<button class="close">x</button>
								</div>
								<div class="col-2">
									<button class="buttonBox d-flex justify-content-center">
										<h1 class="my-auto display-4">+</h1>
									</button>
								</div>
							</div>
						</div>
					</div>
<<<<<<< HEAD
				</div>
=======
				</div>-->
>>>>>>> origin/master
			</div>
			<div>
				<button type="submit" name="update">Update</button>
				<button type="submit" name="delete">Delete</button>
			</div>
		</form>
	</div>
<<<<<<< HEAD
=======
	<%
	}
	%>
>>>>>>> origin/master
</div>