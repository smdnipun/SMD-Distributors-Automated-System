<%@ page import="java.io.PrintWriter"%>
<%
if (request.getSession().getAttribute("Logged") != null) {
	//request.getSession().setAttribute("Logged", "Guest");
%>

<%@ page import="com.smd.model.Product"%>
<%@ page import="com.smd.service.ProductDB"%>
<jsp:include page="./WEB-INF/views/common/head.jsp">
<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
<link rel="stylesheet" href=<%=request.getContextPath() + "/css/order.css"%>>
<%
if (request.getParameter("product") != null) {
ProductDB con = new ProductDB();
Product product = con.getProductById(Integer.parseInt(request.getParameter("product")));
request.setAttribute("product", product);
%>
<body>
<jsp:include page="./WEB-INF/views/common/header.jsp"></jsp:include>
<div class="row">
<div class="col-2">
		<jsp:include page="WEB-INF/views/customer/customerUInavBar.jsp"></jsp:include>
	</div>
<jsp:include page="./WEB-INF/views/OrderM/addOrderBody.jsp"></jsp:include>
</div>
<jsp:include page="./WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
<%} %>
</html>

<%
} else {
	PrintWriter redirect = response.getWriter();
	redirect.println("<script>");
	redirect.println("location='./login.jsp'");
	redirect.println("</script>");
}
%>


