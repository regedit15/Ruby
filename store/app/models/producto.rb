class Producto < ActiveRecord::Base
	#attr_accessible :descripcion, :precio, :titulo, :url_imagen

	validates :titulo, :descripcion, :url_imagen, presence: true

	validates :precio, numericality: {greater_than_or_equal_to: 0.01, message: 'El precio debe ser mayor a 0.01'}

	validates_format_of :precio, :with => /\d\.\d{0,2}\z/, message: 'Formato incorrecto. Ej: 100.50'
		validates :titulo, uniqueness: true

	validates :url_imagen, allow_blank: true, format: {
		with:
		%r{\.(gif|jpg|png)\Z}i,
		message: 'La URL debe ser de tipo GIF, JPG o PNG.'
	}


	has_many :items

	before_destroy :ensure_not_referenced_by_any_item

	private # ensure that there are no line items referencing this product
	def ensure_not_referenced_by_any_item
		if items.empty?
			return true
		else
			errors.add(:base, 'Line Items present')
			return false
		end
	end


