class Item < ActiveRecord::Base
    belongs_to :producto
    belongs_to :carrito

    def precio_total
        producto.precio * cantidad
    end

end
