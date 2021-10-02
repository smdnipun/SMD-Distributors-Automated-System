<div class="col-2" style="background-color: #e4e4e4;height:900px" >
<!-- Tab navs -->
<div class="nav flex-column nav-tabs text-center" id="v-tabs-tab"
role="tablist" aria-orientation="vertical">

<a class="nav-link" id="v-tabs-home-tab" data-mdb-toggle="tab"
href="#v-tabs-home" role="tab" aria-controls="v-tabs-home"
aria-selected="true">Home</a> 

<a class="nav-link">
<form action=<%=request.getContextPath() + "/viewadmin"%> method="post">
<button type="submit"  class="button">View Orders</button>
</form>
</a>
<a class="nav-link">
<form action=<%=request.getContextPath() + "/monthlyOrderreport"%> method="post">
<button type="submit"  class="button">Generate Monthly Report</button>
</form>
</a>
<a class="nav-link">
<form action=<%=request.getContextPath() + "/deletedOrders"%> method="post">
<button type="submit"  class="button">Deleted Orders</button>
</form>
</a>
</div>
</div>