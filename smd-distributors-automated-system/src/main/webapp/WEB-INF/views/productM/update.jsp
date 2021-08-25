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
				</div>-->
			</div>
			<div>
				<button type="submit" name="update">Update</button>
				<button type="submit" name="delete">Delete</button>
			</div>
		</form>
	</div>
	<%
	}
	%>
</div>