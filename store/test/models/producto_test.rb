require 'test_helper'

class ProductoTest < ActiveSupport::TestCase
# test "the truth" do
#   assert true
# end

fixtures :productos


test "atributos del producto no pueden ser vacios" do
    producto = Producto.new
    assert producto.invalid?
    assert producto.errors[:titulo].any?
    assert producto.errors[:descripcion].any?
    assert producto.errors[:precio].any?
    assert producto.errors[:url_imagen].any?
end

test "el precio del producto debe ser positivo" do
    producto = Producto.new(titulo:
        "Titulooo",
        descripcion: "Descripcionnnn",
        url_imagen:
        "aaa.jpg")
    producto.precio = -1
    assert producto.invalid?
    assert_equal ["El precio debe ser mayor a 0.01"],
    producto.errors[:precio]
    producto.precio = 0
    assert producto.invalid?
    assert_equal ["El precio debe ser mayor a 0.01"],
    producto.errors[:precio]
    producto.precio = 1
    assert producto.valid?
end


def crear_producto(imagen_url)
    Producto.new(titulo:"Titulooo2",
        descripcion: "Descripcionnnn",
        precio: 1,
        url_imagen: imagen_url)
end

test "URL de la imagen termina con gif, jpg o png" do

    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg http://a.b.c/x/y/z/fred.gif }

    bad = %w{ fred.doc fred.gif/more fred.gif.more }

    ok.each do |url|
        assert crear_producto(url).valid?, "error al insertar: #{url}"
    end

    bad.each do |url|
        assert crear_producto(url).invalid?, "error al insertar: #{url}"
    end
end

test "producto no valido con el mismo titulo" do
    producto = Producto.new(titulo:
        productos(:ruby).titulo,
        descripcion: "yyy",
        precio:
        1,
        url_imagen:
        "fred.gif")
    assert producto.invalid?
    assert_equal ["has already been taken"], producto.errors[:titulo]
end



end