class Producto < ActiveRecord::Base
  attr_accessible :descripcion, :precio, :titulo, :url_imagen
end
