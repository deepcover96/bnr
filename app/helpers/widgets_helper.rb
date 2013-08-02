module WidgetsHelper
	def box_options_helper
		Box.all.map { |b| [b.material, b.id] }
	end

	# def box_unused_helper
	# 	Box.all.without_orders { |b| [b.material, b.id] }
	# end
end
