<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String object = (String)session.getAttribute("name");
String object1="dd";
%>

<b>${object1}</b>
<!--<div class="col-2" style="background-color: #E0E0E2;">
	<div class="nav flex-column nav-tabs" id="v-tabs-tab" role="tablist"
		aria-orientation="vertical">
		<c:forEach items="${object}" var="festival">
			<a class="nav-link" id="v-tabs-home-tab" data-mdb-toggle="tab"
				href="#v-tabs-home" role="tab" aria-controls="v-tabs-home"
				aria-selected="true">${festival}</a>
		</c:forEach>
	</div>
</div>-->