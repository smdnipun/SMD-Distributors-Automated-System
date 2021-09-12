<%@page import="com.smd.model.Product"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.smd.service.ProductDB"%>
<%
ProductDB con = new ProductDB();
Product[] allProducts=null;
if(request.getParameter("search")==null){
	allProducts = con.getAvailableProducts();
}
else{
	allProducts = con.SeachInAvailable(request.getParameter("search"));
}
request.setAttribute("allProducts", allProducts);
%>

<div class="mt-4">
	<div class="row gy-2">
		<c:forEach items="${allProducts}" var="item">
			<div class="col-3">
				<jsp:include page="Item.jsp">
					<jsp:param name="id" value="${item.getProductID()}"  />
					<jsp:param name="ProductName" value="${item.getName()}"  />
					<jsp:param name="image" value="${item.getImage()}"  />
				</jsp:include>
			</div>
		</c:forEach>
	</div>
</div>