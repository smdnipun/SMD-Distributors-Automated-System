<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.LinkedList"%>
<%@ page import="com.smd.model.Product"%>
<%@ page import="com.smd.service.ProductDB"%>

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
			<form action="../../searchP" method="post">
				<input type="text" size="50" name="search" />
				<button type="submit" class="">
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
				<c:forEach items="${allProducts}" var="product">
					<b><c:out value="${product.getName()}" /></b>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<%
				ProductDB con = new ProductDB();
				Product[] searchData = con.search(request.getParameter("search"));
				request.setAttribute("searchData", searchData);
				%>
				<c:forEach items="${searchData}" var="product">
					<b>jjjjj</b>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
</div>