<jsp:include page="../../WEB-INF/views/common/head.jsp">
	<jsp:param name="Title" value="SMD Distributors | Customer Management" /></jsp:include>
	<link rel="stylesheet" href=<%=request.getContextPath() + "/css/table.css"%>>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<body>
	<script src="../js/table.js"></script>
	<jsp:include page="../../WEB-INF/views/common/adminHeader.jsp"></jsp:include>
	<jsp:include page="../../WEB-INF/views/common/navbar.jsp">
		<jsp:param name="navs" value="ttt,ffff ddddd,fff"  />
	</jsp:include>
	<jsp:include page="../../WEB-INF/views/OrderM/MonthlyOrderReport.jsp"></jsp:include>
	<jsp:include page="../../WEB-INF/views/common/adminFooter.jsp"></jsp:include>
</body>
</html>