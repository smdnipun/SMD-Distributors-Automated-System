<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Customer Services</title>
    <jsp:include page="../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors" /></jsp:include>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <jsp:include page="../WEB-INF/views/common/header.jsp"></jsp:include>
    
    <div class="mydiv">
    
            <center>
			<form name="feedback" method="post" action="addfeedback" style="text-align: left;">
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
                    <textarea id="Message" name="Message" style="height: 180px; width: 500px;" required></textarea><br><br><br>

				<h6>How Did You Like Us?</h6>
                <div class="rate">
                    <input type="radio" id="star5" name="rate" value="5" />
                    <label for="star5" title="text"></label>
                    <input type="radio" id="star4" name="rate" value="4" />
                    <label for="star4" title="text"></label>
                    <input type="radio" id="star3" name="rate" value="3" />
                    <label for="star3" title="text"></label>
                    <input type="radio" id="star2" name="rate" value="2" />
                    <label for="star2" title="text"></label>
                    <input type="radio" id="star1" name="rate" value="1" />
                    <label for="star1" title="text"></label>
                </div><br><br><br>

                <input type="submit" value="Submit Your Feedback"></button>
                    
            </form> <br>
        </center>
        </div>
        <br><br>
 
        <!--<jsp:include page="../WEB-INF/views/common/footer.jsp"></jsp:include>-->
</body>
</html>