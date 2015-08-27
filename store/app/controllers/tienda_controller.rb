class TiendaController < ApplicationController
    def index
        @productos = Producto.order(:titulo)
    end
end
