<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.LinkedList"%>
<%@ page import="com.smd.model.Product"%>
<%@ page import="com.smd.service.ProductDB"%>

<div class="row">
	<jsp:include page="../common/navbar.jsp">
		<jsp:param name="navs"
			value="View All Products,all.jsp_Add Products,add.jsp" />
	</jsp:include>
	<div class="col-10 my-auto">
		<div class="row text-center pb-4">
			<form action="../../searchP" method="post">
				<input type="text" size="50" name="search" />
				<button type="submit" class="btn btn-primary">
					<i class="bi bi-search"></i>
				</button>
			</form>
		</div>
		<c:choose>
			<c:when test="${param.search==null}">
				<%
				ProductDB con = new ProductDB();
				Product[] allProducts = con.getAllProducts();
				request.setAttribute("allProducts", allProducts);
				%>
				<table class="table table-striped">
					<tbody>
						<tr>
							<th class="text-center"><h2>All Products</h2></th>
						</tr>
						<c:forEach items="${allProducts}" var="product">

							<tr>
								<td><a href="update.jsp?product=${product.getProductID()}">
										<img
										src="<%=request.getContextPath()+"/img/"%>${product.getImage()}.jpg"
										width="40" height="40" /> <c:out value="${product.getName()}"></c:out>
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:when>
			<c:otherwise>
				<%
				ProductDB con = new ProductDB();
				Product[] searchData = con.search(request.getParameter("search"));
				request.setAttribute("searchData", searchData);
				%>
				<table class="table table-striped">
					<tbody>
						<c:forEach items="${searchData}" var="product">
							<!--<tr>
								<td><a href="update.jsp?product=${product.getProductID()}"><c:out
											value="${product.getName()}"></c:out></a></td>
							</tr>-->
							<tr>
								<td><a href="update.jsp?product=${product.getProductID()}">
										<img
										src="<%=request.getContextPath()+"/img/"%>${product.getImage()}.jpg"
										width="40" height="40" /> <c:out value="${product.getName()}"></c:out>
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:otherwise>
		</c:choose>
	</div>
	<br> <br>
</div>