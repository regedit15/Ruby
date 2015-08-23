class CombinarItemsEnCarrito < ActiveRecord::Migration
	def up
		# replace multiple items for a single product in a cart with a single item
		Carrito.all.each do |carrito|
			# count the number of each product in the cart
			suma = carrito.items.group(:producto_id).sum(:cantidad)
			suma.each do |producto_id, cantidad|
				if cantidad > 1
					# remove individual items
					carrito.items.where(producto_id: producto_id).delete_all
					# replace with a single item
					item = carrito.items.build(producto_id: producto_id)
					item.cantidad = cantidad
					item.save!
				end
			end
		end
	end


	def down
		# split items with quantity>1 into multiple items
		Item.where("cantidad>1").each do |item|
			# add individual items
			item.cantidad.times do
				Item.create carrito_id: item.carrito_id, producto_id: item.producto_id
			end
			# remove original item
			item.destroy
		end
	end

end
