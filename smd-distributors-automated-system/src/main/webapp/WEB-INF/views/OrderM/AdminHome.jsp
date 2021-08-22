<div class="col-10">
<form action=<%=request.getContextPath() + "/viewadmin"%> method="post">
<button type="submit">View Orders</button>
</form>

<form action=<%=request.getContextPath() + "/monthlyOrderreport"%> method="post">
<button type="submit">Generate Monthly Report</button>
</form>

<form action=<%=request.getContextPath() + "/deletedOrders"%> method="post">
<button type="submit">Deleted Orders</button>
</form>

</div>
