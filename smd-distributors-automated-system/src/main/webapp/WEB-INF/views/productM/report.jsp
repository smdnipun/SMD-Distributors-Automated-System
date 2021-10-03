<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.LinkedList"%>
<%@ page import="com.smd.model.Product"%>
<%@ page import="com.smd.model.ProductReportItem"%>
<%@ page import="com.smd.service.ProductDB"%>

<%
//Creating a connection to the database and fetching all the products and saving them in the request attribute so they can be filled in the drop down menu.
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
				<!-- Getting data from the saved request attribute and filling to the drop down menu -->
				<c:forEach items="${allProducts}" var="product">
					<option value="<c:out value="${product.getName()}"></c:out>">${product.getName()}</option>
				</c:forEach>
			</select> <input type="month" name="month" min="2021-01"></input>
			<button type="submit" class="btn btn-primary">Filter</button>
		</form>
		<table class="table" id="tblCustomers">
			<tr>
				<td colspan=5 style="text-align: center;"><h3>
						<c:choose>
							<c:when test="${param.month!=null && param.product!=null}">
								<c:choose>
									<c:when test="${param.product=='0' && param.month==''}">
										<span>SMD Distributors Overall Summary Report</span>
									</c:when>
									<c:when test="${param.product=='0' && param.month!=''}">
										<span>SMD Distributors Overall Summary Report for
											${param.month }</span>
									</c:when>
									<c:when test="${param.product!='0' && param.month==''}">
										<span>SMD Distributors Overall Summary Report of
											${param.product }</span>
									</c:when>
									<c:otherwise>
										<span>SMD Distributors Summary report of
											${param.product} for ${param.month}</span>
									</c:otherwise>
								</c:choose>
							</c:when>
							<c:otherwise>
								<span>SMD Distributors Overall Summary Report</span>
							</c:otherwise>
						</c:choose>
					</h3></td>
			</tr>
			<tr>
				<th>Product Name</th>
				<th>Customer Name</th>
				<th>Quantity</th>
				<th>Order Date</th>
				<th>Total Price</th>
			</tr>
			<c:choose>
				<c:when test="${param.month!=null}">
					<!-- If the "month" URL parameter is not null it fill fetch the data related to the specified data on the URL parameters-->
					<%
					ProductDB reportCon = new ProductDB();
					ProductReportItem[] report = reportCon.getReport(request.getParameter("month"), request.getParameter("product"));
					for (ProductReportItem itm : report) {
						total += Integer.valueOf(itm.getPrice());
						//Calculating the total value of the items to a relevent filter
					}
					request.setAttribute("report", report); // setting the data to the request attribute
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
					for (ProductReportItem itm : report) {
						total += Integer.valueOf(itm.getPrice());
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
		<button id="btnExport" class="btn btn-primary">Print Report</button>
	</div>
</div>