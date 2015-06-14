class Carrito < ActiveRecord::Base

	has_many :items, dependent: :destroy

	def add_producto(producto_id)
		current_item = items.find_by_producto_id(producto_id)
		if current_item
			current_item.cantidad += 1
		else
			current_item = items.build(producto_id: producto_id)
		end
		current_item
	end


end
