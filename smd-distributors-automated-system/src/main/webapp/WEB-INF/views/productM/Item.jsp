<% String test=request.getParameter("ProductName"); 
 String[] arr=test.split(" ");
 System.out.println(arr[0]);
%>
<div class="text-center">
	<img src="<%=request.getContextPath()+"/img/"+request.getParameter("image")+".jpg"%>" height="100" width="100">
	<div>${param.ProductName}</div>
</div>