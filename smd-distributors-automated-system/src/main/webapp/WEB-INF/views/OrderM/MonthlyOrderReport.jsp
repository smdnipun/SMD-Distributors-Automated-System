
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://raw.githack.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js" >

</script>
<script type="text/javascript">
function generatePdf(){
	var d = new Date();
	var y = d.getFullYear();
	
	var month = new Array();
	month[0] = "January";
	month[1] = "February";
	month[2] = "March";
	month[3] = "April";
	month[4] = "May";
	month[5] = "June";
	month[6] = "July";
	month[7] = "August";
	month[8] = "September";
	month[9] = "October";
	month[10] = "November";
	month[11] = "December";
	var n = month[d.getMonth()];
	
	var str = 'Monthly Order Report-'+y+"-"+n;
	const element=document.getElementById("report");
	html2pdf().from(element).save(str);
}
</script>
<div class="col-10">
<br>
<div id="report">
<center>
<h1>Monthly Report</h1>
</center>
<br>



<table class="table">
  <thead>
    <tr>
       <th scope="col">Product ID</th>
       <th scope="col">Total Quantity</th>
       <th scope="col">Total Price</th>
    </tr>
  </thead>
  <tbody>
 	
 <c:forEach var="morder" items="${monthlyorder}">
 
  <tr>
   <c:set var="tqty" value="${morder.getTQTY()}"/>
  <c:set var="pid" value="${morder.getPID()}"/>
   <c:set var="price" value="${morder.getTPRICE()}"/>
	
  
  

    
 

  
 
 

      <th scope="row">${morder.getPID()}</th>
      <td>${morder.getTQTY()}</td>
      <td>${morder.getTPRICE()}</td>
    
     
      
    </tr>

 </c:forEach>

</tbody>
</table>

</div>

<button onclick="generatePdf()">Download PDF</button>
</div>



