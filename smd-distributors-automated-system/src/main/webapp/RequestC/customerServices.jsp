<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Customer Services</title>
    <jsp:include page="../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/requestcustomer.css"/>
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	<!-- <script>
	function validsubmit(){
		alert("Thank you for your feedback!");
		return true;
	}
	</script> -->
</head>
<body>
    <jsp:include page="../WEB-INF/views/common/header.jsp"></jsp:include>
    
    <div class="mydiv">
    
            <center>
			<form name="feedback" method="post" action="../addfeedback" style="text-align: left;">
                <h2 style="text-align: center;">Send Us A Feedback</h2><br>
                <h6 class="fw-light" style="text-align: center;">We would love to hear your thoughts. <br>
                         Get connected with us!</h6><br><br>
                        
				<lable for="date">Date</lable>
					<input type="date" id="Date" name="Date" required><br><br><br>

				<label>Feedback type: </label><br>
                    <input type="radio" id="Type" name="Type" value="I" checked> Complaint
	              	<input type="radio" id="Type" name="Type" value="C">Comment               
           			<input type="radio" id="Type" name="Type" value="Q">Question
        	 <br><br><br>
						
                <label for="message">Type your message</label><br>
                    <textarea id="Message" name="Message" style="height: 150px; width: 500px;" required></textarea><br><br><br>

				<h6>How Did You Like Us?</h6>
                <div class="stars">
				    <input class="star star-5" id="star-5" type="radio" name="Rating" value="5"/>
				    <label class="star star-5" for="star-5"></label>
				    <input class="star star-4" id="star-4" type="radio" name="Rating" value="4"/>
				    <label class="star star-4" for="star-4"></label>
				    <input class="star star-3" id="star-3" type="radio" name="Rating" value="3"/>
				    <label class="star star-3" for="star-3"></label>
				    <input class="star star-2" id="star-2" type="radio" name="Rating" value="2"/>
				    <label class="star star-2" for="star-2"></label>
				    <input class="star star-1" id="star-1" type="radio" name="Rating" value="1"/>
				    <label class="star star-1" for="star-1"></label>
				</div>
                <br><br>

                <center></center><input type="submit" value="Submit Your Feedback" class="addbtn"></button></center>
                    
            </form> <br>
        </center>
        </div>
        <br><br>
 
        <!--<jsp:include page="../WEB-INF/views/common/footer.jsp"></jsp:include>-->
</body>
</html>