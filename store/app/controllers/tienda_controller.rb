class TiendaController < ApplicationController
    def index
        @productos = Producto.order(:titulo)
        @carrito = carrito_actual
    end
end
