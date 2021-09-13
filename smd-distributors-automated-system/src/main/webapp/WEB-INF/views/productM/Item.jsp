<% String test=request.getParameter("ProductName"); 
 String[] arr=test.split(" ");
%>
<a href="AddOrder.jsp?product=${param.id}">
<div class="text-center">
	<img src="<%=request.getContextPath()+"/img/"+request.getParameter("image")+".jpg"%>" height="100" width="100">
	<div>${param.ProductName}</div>
</div>
</a>