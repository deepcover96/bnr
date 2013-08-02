$('<%= escape_javascript(render("box", :box => @box)) %>')
	.appendTo('#box_listing')
	.hide()
	.fadeIn()
$('#total').html '<%= escape_javascript(render("total", :order => @order)) %>'