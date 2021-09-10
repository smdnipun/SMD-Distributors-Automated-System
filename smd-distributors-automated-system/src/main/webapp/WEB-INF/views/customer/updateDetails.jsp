<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.smd.model.Customer"%>
<%@ page import="com.smd.service.ICustomerDetails"%>
<%@ page import="com.smd.service.CusDetailsServiceImpl"%>
<%
if (request.getSession().getAttribute("Logged") == null) {
	request.getSession().setAttribute("Logged", "Guest");
}

if (request.getSession().getAttribute("CustomerID") != null) {
	CusDetailsServiceImpl con = new CusDetailsServiceImpl();
	Customer customer = con.getCustomerById(Integer.parseInt(request.getSession().getAttribute("CustomerID").toString()));
	request.setAttribute("customer", customer);
%>
<div class="row">
	<div class="col-2">
		<jsp:include page="./customerUInavBar.jsp"></jsp:include>
	</div>
	<div class="col-10 pt-2 pb-2">
		<div class="d-flex justify-content-center">
			<h3>Personal Info</h3>
		</div>
		<div class="card px-4 py-4 my-auto mx-auto w-50 d-flex">
			<div class="row px-3 d-flex">
				<form action="CustomerInfoUpdate" method="Post">
                    <div class="row px-3">
                        <label for="fname" class="mt-2 mb-0 text-sm">First Name :</label>
                        <input type="text" id="fname" name="fname" value="${customer.getFname()}" Required>

                        <label for="lname" class="mt-2 mb-0 text-sm">Last Name :</label>
                        <input type="text" id="lname" name="lname" value="${customer.getLname()}" Required>

                        <label for="hname" class="mt-2 mb-0 text-sm">Hardware Name :</label>
                        <input type="text" id="hname" name="hname" value="${customer.getHardwareName()}" Required>

                        <label for="pno" class="mt-2 mb-0 text-sm">Telephone (Enter Phone number starting from 94):</label>
                        <input type ="tel" id="pno" name="pno" pattern="[0-9]{11}" value="${customer.getPhoneNo()}" Required>

                        <label for="address" class="mt-2 mb-0 text-sm">Address :</label>
                        <input type="text" id="address" name="address" value="${customer.getAddress()}" Required>
                    </div>
                    <div class="d-flex justify-content-center">
                        <button type="submit" id="submitc" class="btn btn-success mt-3" name="update">Update</button>
                    </div>
	            </form>
			</div>
		</div>
	</div>
</div>
<%
}
%>