<%@page import="com.smd.model.Product"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
Product n= new Product("ddd sss", "dddd", 333, 333);
Product arr[]={n,n,n,n,n,n,n,n,n};
request.setAttribute("arr", arr);
%>

<div class="mt-4">
	<div class="row gy-2">
		<c:forEach items="${arr}" var="item">
			<div class="col-3">
				<jsp:include page="Item.jsp">
					<jsp:param name="ProductName" value="${item.getName()}"  />
				</jsp:include>
			</div>
		</c:forEach>
	</div>
</div>