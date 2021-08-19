<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String navs=request.getParameter("navs");
	String[] navArray=navs.split(" ");
	request.setAttribute("navArray", navArray);
	
%>

<div class="col-2" style="background-color: #E0E0E2;">
	<div class="nav flex-column nav-tabs" id="v-tabs-tab" role="tablist"
		aria-orientation="vertical">
		<c:forEach items="${navArray}" var="nav">
			<a class="nav-link" id="v-tabs-home-tab" data-mdb-toggle="tab"
				role="tab" aria-controls="v-tabs-home"
				aria-selected="true" href=${nav.split(",")[1]}>${nav.split(",")[0]}</a>
		</c:forEach>
	</div>
</div>
