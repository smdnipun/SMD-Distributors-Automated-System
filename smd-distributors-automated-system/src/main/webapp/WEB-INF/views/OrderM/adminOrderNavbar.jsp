<div class="col-2" style="background-color: #e4e4e4;height:900px" >
<!-- Tab navs -->
<div class="nav flex-column nav-tabs text-center" id="v-tabs-tab"
role="tablist" aria-orientation="vertical">


<a class="nav-link"
id="v-tabs-profile-tab" data-mdb-toggle="tab" href=<%=request.getContextPath() +"/admin/OrderManagement/OrderAdminHome.jsp"%>
role="tab" aria-controls="v-tabs-profile" aria-selected="false">Home</a>
<a class="nav-link">
<form action=<%=request.getContextPath() + "/viewadmin"%> method="post">
<button type="submit"  class="button">VIEW ORDER</button>
</form>
</a>
<a class="nav-link">
<form action=<%=request.getContextPath() + "/monthlyOrderreport"%> method="post">
<button type="submit"  class="button">GENERATE MONTHLY REPORT</button>
</form>
</a>
<a class="nav-link">
<form action=<%=request.getContextPath() + "/deletedOrders"%> method="post">
<button type="submit"  class="button">DELETED ORDERS</button>
</form>
</a>
</div>
</div>