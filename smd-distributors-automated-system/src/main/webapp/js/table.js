$(document).ready(function() {
    $('#customerDetails').DataTable( {
        "scrollX": true
    } );

	var table = $('#customerDetails').DataTable();
     
    $('#customerDetails tbody').on('click', 'tr', function () {
        var data = table.row( this ).data();
		$('#cus_id').val(data[0]);
    } );
} );