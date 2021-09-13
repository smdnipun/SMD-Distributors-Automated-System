<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.PrintWriter"%>
<%
if (request.getSession().getAttribute("Logged") != null) {
    //request.getSession().setAttribute("Logged", "Guest");
%>
<% int id = Integer.parseInt(request.getSession().getAttribute("CustomerID").toString()); %> 
<!DOCTYPE html>
<html>
<head>
	<title>Customer Services</title>
	     <jsp:include page="../WEB-INF/views/common/header.jsp"></jsp:include>
    <jsp:include page="../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/requestcustomer.css"/>
</head>
<body>
   
     <div class=row>
    	<jsp:include page="../WEB-INF/views/Request/CusRequestnavbar.jsp"></jsp:include> 
    	<div class="col-9">
    
            <center>
			<form id="feedback" method="post" action="../addfeedback" style="text-align: left;">
                <h2 style="text-align: center;">Send Us A Feedback</h2><br>
                <h6 class="fw-light" style="text-align: center;">We would love to hear your thoughts.
                         Get connected with us!</h6><br>
				
				<div class="mb-3">
  					<input type="hidden" class="form-control" id="formGroupExampleInput2" placeholder="Enter Customer ID" name="Cus_ID" required="true" value="<%=id %>" readonly>
					</div>
				
				<!-- <h4>Feedback type: </h4><br> -->
				<h5 for="type">Feedback type: </h5><br>
                    <input type="radio"  id="Type" name="Type" value="I" checked>  <label style="font-size: 15px;">Complaint </label>
	              	<input type="radio"  id="Type" name="Type" value="C"> <label style="font-size: 15px;">Comment </label>               
           			<input type="radio"  id="Type" name="Type" value="Q"> <label style="font-size: 15px;">Question </label>    
        	 <br><br><br>
						
				<div class="form-group"> 		
                <h5 for="message">Type your message</h5>
                    <textarea id="Message" class="form-control" name="Message" style="height: 150px; width: 500px;" required></textarea><br><br>
				</div>
				
				<!-- <h>How Did You Like Us?</h6> -->
				<h6 for="stars">How Did You Like Us?</h6>
                <div class="stars">
				    <input class="star star-5" id="star-5" type="radio" name="Rating" value="5" />
				    <label class="star star-5" for="star-5"></label>
				    <input class="star star-4" id="star-4" type="radio" name="Rating" value="4" />
				    <label class="star star-4" for="star-4"></label>
				    <input class="star star-3" id="star-3" type="radio" name="Rating" value="3" />
				    <label class="star star-3" for="star-3"></label>
				    <input class="star star-2" id="star-2" type="radio" name="Rating" value="2" />
				    <label class="star star-2" for="star-2"></label>
				    <input class="star star-1" id="star-1" type="radio" name="Rating" value="1" />
				    <label class="star star-1" for="star-1"></label>
				</div>
			<br>
		      <input type="submit" value="Send Message" id="feed_button" />
                    
            </form> <br>
        </center>
        </div>
        </div>
       <jsp:include page="../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>
<%
} else {
    PrintWriter redirect = response.getWriter();
    redirect.println("<script>");
    redirect.println("location='../login.jsp'");//put the location from your jsp file
    redirect.println("</script>");
}
%>