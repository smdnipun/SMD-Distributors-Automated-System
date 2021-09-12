$(document).ready(function() {
    $('#stock').DataTable( {
        "scrollX": true
    } );

	var stock = $('#stock').DataTable();
     
    $('#stock tbody').on('click', 'tr', function () {
        var data = table.row( this ).data();
		$('#stockID').val(data[0]);
		$('#itemName').val(data[1]);
		$('#quntity').val(data[2]);
		$('#date').val(data[3]);
		$('#status').val(data[4]);
    } );
} );


