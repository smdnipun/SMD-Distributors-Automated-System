$(document).ready(function() {
    $('#table').DataTable( {
        "scrollX": true
    } );

	var table = $('#table').DataTable();
     
    $('#table tbody').on('click', 'tr', function () {
        var data = table.row( this ).data();
		$('#cus_id').val(data[0]);
		$('#fname').val(data[1]);
		$('#lname').val(data[2]);
		$('#hname').val(data[3]);
		$('#username').val(data[4]);
		$('#nic').val(data[5]);
		$('#pno').val(data[6]);
		$('#email').val(data[7]);
		$('#address').val(data[8]);
    } );
} );