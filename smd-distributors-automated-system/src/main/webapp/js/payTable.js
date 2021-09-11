$(document).ready(function() {
	$('#payTable').DataTable({
		"scrollX": true
	});

	var table = $('#payTable').DataTable();

	$('#payTable tbody').on('click', 'tr', function() {
		var data = table.row(this).data();
		console.log(data)
		$('#CID').val(data[0]);
		$('#a').val(data[1]);
		$('#OID').val(data[2]);
		$('#b').val(data[3]);
		$('#c').val(data[4]);
		$('#d').val(data[5]);
	});
});