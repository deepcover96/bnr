$("li#box_<%= @box.id %>").fadeOut().remove()
$('#total').html '<%= escape_javascript(render("total", :order => @order)) %>'