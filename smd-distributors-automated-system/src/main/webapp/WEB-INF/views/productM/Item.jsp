<% String test=request.getParameter("ProductName"); 
 String[] arr=test.split(" ");
 System.out.println(arr[0]);
%>
<div class="text-center">
	<img src=<%=request.getContextPath()+"/img/Logo.png"%> height="100" width="100">
	<div>${param.ProductName}</div>
</div>