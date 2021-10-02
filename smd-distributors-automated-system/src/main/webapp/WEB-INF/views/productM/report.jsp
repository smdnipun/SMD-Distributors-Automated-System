<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.LinkedList"%>
<%@ page import="com.smd.model.Product"%>
<%@ page import="com.smd.model.ProductReportItem"%>
<%@ page import="com.smd.service.ProductDB"%>

<%
ProductDB con = new ProductDB();
Product[] allProducts = con.getAllProducts();
request.setAttribute("allProducts", allProducts);
int total = 0;
%>

<div class="row">
	<jsp:include page="../common/navbar.jsp">
		<jsp:param name="navs"
			value="View All Products,all.jsp_Add Products,add.jsp_Reports,report.jsp" />
	</jsp:include>
	<div class="col-10">
		<form>
			<label for="product">Select Product:</label> <select name="product">
				<option value="0">All products</option>
				<c:forEach items="${allProducts}" var="product">
					<option value="<c:out value="${product.getName()}"></c:out>">${product.getName()}</option>
				</c:forEach>
			</select> <input type="month" name="month" min="2021-01"></input>
			<button type="submit">Submit</button>
		</form>
		<table class="table" id="tblCustomers">
			<tr>
				<th>Product Name</th>
				<th>Customer Name</th>
				<th>Quantity</th>
				<th>Order Date</th>
				<th>Total Price</th>
			</tr>
			<c:choose>
				<c:when test="${param.month!=null}">
					<%
					ProductDB reportCon = new ProductDB();
					ProductReportItem[] report = reportCon.getReport(request.getParameter("month"), request.getParameter("product"));
					for (ProductReportItem test : report) {
						total += Integer.valueOf(test.getPrice());
					}
					request.setAttribute("report", report);
					%>
					<c:forEach items="${report}" var="item">
						<tr>
							<td>${item.getPname()}</td>
							<td>${item.getCname()}</td>
							<td>${item.getQuantity()}</td>
							<td>${item.getDate()}</td>
							<td>Rs.${item.getPrice()}</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<%
					ProductDB reportCon = new ProductDB();
					ProductReportItem[] report = reportCon.getReport("0", "0");
					for (ProductReportItem test : report) {
						total += Integer.valueOf(test.getPrice());
					}
					request.setAttribute("report", report);
					%>
					<c:forEach items="${report}" var="item">
						<tr>
							<td>${item.getPname()}</td>
							<td>${item.getCname()}</td>
							<td>${item.getQuantity()}</td>
							<td>${item.getDate()}</td>
							<td>Rs.${item.getPrice()}</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			<tr>
				<th colspan="4" style="text-align: center;">Total Amount:</th>
				<th>Rs.<%=Integer.toString(total)%></th>
			</tr>
		</table>
		<button id="btnExport">Print Report</button>
	</div>
</div>