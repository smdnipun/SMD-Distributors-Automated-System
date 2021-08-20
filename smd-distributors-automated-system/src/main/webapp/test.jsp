<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" />

<!--fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Serif&display=swap"
	rel="stylesheet" />

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<!--MDB Kit-->
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.css"
	rel="stylesheet" />

<!-- MDB -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.js"></script>
<style>
* {
	overflow: -moz-scrollbars-none;
	scrollbar-width: none;
	/* this will hide the scrollbar in internet explorers */
	-ms-overflow-style: none;
}

*::-webkit-scrollbar {
	display: none;
	width: 0px;
}

body {
	min-height: 100vh;
	overflow-x: hidden;
}

footer {
	width: 100%;
}
</style>

<title>${param.Title}</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<jsp:include page="./WEB-INF/views/common/header.jsp"></jsp:include>
	<div class="row" style="min-height: 100vh">
		<jsp:include page="./WEB-INF/views/common/navbar.jsp">
			<jsp:param name="navs" value="ttt,jjj ddddd,fff ddddd,fff" />
		</jsp:include>
		
	</div>
	<div class="row"><jsp:include
			page="./WEB-INF/views/common/adminFooter.jsp"></jsp:include></div>
</body>
</html>

