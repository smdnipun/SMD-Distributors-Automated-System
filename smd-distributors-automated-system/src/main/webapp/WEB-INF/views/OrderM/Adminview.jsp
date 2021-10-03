
    	 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    	 
    
    <style>
	thead input {
        width: 100%;
    }
</style>	 
    	 
 <script type="text/javascript">
 $(document).ready(function () {
	    // Setup - add a text input to each footer cell
	    $('#example thead tr')
	        .clone(true)
	        .addClass('filters')
	        .appendTo('#example thead');
	 
	    var table = $('#example').DataTable({
	        orderCellsTop: true,
	        fixedHeader: true,
	        initComplete: function () {
	            var api = this.api();
	 
	            // For each column
	            api
	                .columns()
	                .eq(0)
	                .each(function (colIdx) {
	                    // Set the header cell to contain the input element
	                    var cell = $('.filters th').eq(
	                        $(api.column(colIdx).header()).index()
	                    );
	                    var title = $(cell).text();
	                    $(cell).html('<input type="text" placeholder="' + title + '" />');
	 
	                    // On every keypress in this input
	                    $(
	                        'input',
	                        $('.filters th').eq($(api.column(colIdx).header()).index())
	                    )
	                        .off('keyup change')
	                        .on('keyup change', function (e) {
	                            e.stopPropagation();
	 
	                            // Get the search value
	                            $(this).attr('title', $(this).val());
	                            var regexr = '({search})'; //$(this).parents('th').find('select').val();
	 
	                            var cursorPosition = this.selectionStart;
	                            // Search the column for that value
	                            api
	                                .column(colIdx)
	                                .search(
	                                    this.value != ''
	                                        ? regexr.replace('{search}', '(((' + this.value + ')))')
	                                        : '',
	                                    this.value != '',
	                                    this.value == ''
	                                )
	                                .draw();
	 
	                            $(this)
	                                .focus()[0]
	                                .setSelectionRange(cursorPosition, cursorPosition);
	                        });
	                });
	        },
	    });
	});
</script>  

<div class="col-9">
<br>
<center>
<h1>Orders</h1>
</center>
<br>
<table id="example" class="display" style="width:100%">
                <thead class="thead-dark">
    <tr>
       <th scope="col">Order ID</th>
       <th scope="col">Customer ID</th>
       <th scope="col">Order Date</th>
       <th scope="col">Order States</th>
       <th scope="col">Total Price</th>
       <th scope="col">Paid Amount</th>
       <th scope="col">Remain Amount</th>
       <th scope="col">Quantity</th>
       <th scope="col">Product ID</th>
       <!--<th scope="col">Update</th>-->
       <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>

 <c:forEach var="orders" items="${orderdetails}">
 
  <tr>
  
  <c:set var="oid" value="${orders.OID}"/>
  <c:set var="cid" value="${orders.CID}"/>
  <c:set var="odate" value="${orders.ODATE}"/>
  <c:set var="ostate" value="${orders.OSTATE}"/>
  <c:set var="tprice" value="${orders.TPRICE}"/>
  <c:set var="pamount" value="${orders.PAMOUNT}"/>
  <c:set var="ramount" value="${orders.RAMOUNT}"/>
  <c:set var="qty" value="${orders.QTY}"/>
  <c:set var="pty" value="${orders.PID}"/>
 

      <th scope="row">${orders.OID}</th>
      <td>${orders.CID}</td>
      <td>${orders.ODATE}</td>
      <td>${orders.OSTATE}</td>
      <td>${orders.TPRICE}</td>
      <td> ${orders.PAMOUNT}</td>
      <td>${orders.RAMOUNT}</td>
      <td>${orders.QTY}</td>
      <td> ${orders.PID}</td>
     <!--<td>
     
      <c:url value="admin/OrderManagement/UpdateOrderAdmin.jsp" var="orderupdate">
      <c:param name="oid" value="${oid}"/>
      <c:param name="cid" value="${cid}"/>
      <c:param name="odate" value="${odate}"/>
      <c:param name="ostate" value="${ostate}"/>
      <c:param name="pamount" value="${pamount}"/>
      <c:param name="tprice" value="${tprice}"/>
      <c:param name="ramount" value="${ramount}"/>
      <c:param name="qty" value="${qty}"/>
      <c:param name="pty" value="${pty}"/>
      
     
      </c:url>
      <a href="${orderupdate}">
        <input type="button" name="update" value="Update Order">
      </a>
    
      
      </td>-->
      
      <td>
      <c:url value="admin/OrderManagement/DeleteOrderAdmin.jsp" var="orderdelete">
      <c:param name="oid" value="${oid}"/>
      <c:param name="cid" value="${cid}"/>
      <c:param name="odate" value="${odate}"/>
      <c:param name="ostate" value="${ostate}"/>
      <c:param name="pamount" value="${pamount}"/>
      <c:param name="tprice" value="${tprice}"/>
      <c:param name="ramount" value="${ramount}"/>
      <c:param name="qty" value="${qty}"/>
      <c:param name="pty" value="${pty}"/>
      
     
      </c:url>
      <a href="${orderdelete}">
        <input type="button" name="delete" value="Delete Order">
      </a>
      
      
      </td>
      
    </tr>
 
 
 </c:forEach>
</tbody>
</table>

</div>


