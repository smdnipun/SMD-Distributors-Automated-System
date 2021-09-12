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
		<div class="content">
			<form action="../../updateproduct" method="post">
				<div class="row">
					<div class="col-4 mx-auto">
						<div class="text-center">
							<img
								src="<%=request.getContextPath()+"/img/"%>${product.getImage()}.jpg"
								class="img-thumbnail">
						</div>
						<div class="mb-3">
							<label class="form-label">Product ID</label> <input name="pid"
								size="20" value="${product.getProductID()}" readonly
								class="form-control" />
						</div>
						<div class="mb-3">
							<label class="form-label">Product Name</label> <input
								name="pname" size="20" value="${product.getName()}"
								class="form-control" />
						</div>
						<div class="mb-3">
							<label class="form-label">Product Weight</label> <input
								name="pweight" size="2" value="${product.getWeight()}"
								type="number" class="form-control" min="1" />
						</div>
						<div class="mb-3">
							<label class="form-label">Product Price</label> <input
								name="pprice" size="10" value="${product.getPrice()}"
								type="number" class="form-control" min="1" />
						</div>
						<div class="mb-3">
							<%
							Product n = (Product) request.getAttribute("product");
							%>
							<select name="image">
								<option value="sanstha"
									<%=n.getImage().equals("sanstha") ? "selected" : ""%>>Sanstha</option>
								<option value="tokyo"
									<%=n.getImage().equals("tokyo") ? "selected" : ""%>>tokyo</option>
								<option value="powertech"
									<%=n.getImage().equals("powertech") ? "selected" : ""%>>powertech</option>
								<option value="nippon"
									<%=n.getImage().equals("nippon") ? "selected" : ""%>>nippon</option>
							</select>
						</div>
						<div class="mb-3">
							<label class="form-label">Product Availability</label> <label
								class="switch"> <c:choose>
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
				</div>
				<div class="text-center">
					<button type="submit" name="button" value="update" class="btn btn-primary">Update</button>
					<button type="submit" name="button" value="delete" class="btn btn-primary">Delete</button>
				</div>
				<br>
				<br>
			</form>
		</div>
	</div>
	<%
	}
	%>
</div>