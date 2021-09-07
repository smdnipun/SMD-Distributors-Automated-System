$(document).ready(function() {
<<<<<<< HEAD
    $('#customerDetails').DataTable( {
        "scrollX": true
    } );

	var table = $('#customerDetails').DataTable();
     
    $('#customerDetails tbody').on('click', 'tr', function () {
        var data = table.row( this ).data();
		$('#cus_id').val(data[0]);
=======
    $('#table').DataTable( {
        "scrollX": true
    } );

	var table = $('#table').DataTable();
     
    $('#table tbody').on('click', 'tr', function () {
        var data = table.row( this ).data();
console.log(data)
		$('#cus_id').val(data[0]);
		$('#fname').val(data[1]);
		$('#lname').val(data[2]);
		$('#hname').val(data[3]);
		$('#nic').val(data[4]);
		$('#pno').val(data[5]);
		$('#email').val(data[6]);
		$('#address').val(data[7]);
>>>>>>> origin/master
    } );
} );