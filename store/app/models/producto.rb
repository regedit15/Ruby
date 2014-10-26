class Producto < ActiveRecord::Base
  attr_accessible :descripcion, :precio, :titulo, :url_imagen

  validates :titulo, :descripcion, :url_imagen, presence: true

  validates :precio, numericality: {greater_than_or_equal_to: 0.01, message: 'El precio debe ser mayor a 0.01'}

  validates :titulo, uniqueness: true

  validates :url_imagen, allow_blank: true, format: {
with:
%r{\.(gif|jpg|png)\Z}i,
message: 'La URL debe ser de tipo GIF, JPG o PNG.'
}


end
