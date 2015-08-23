# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Producto.delete_all
# . . .
Producto.create(titulo: 'Tomate',
	descripcion:
	%{<p>
Soy un tomate muy rico
</p>},
	url_imagen: 'tomate.png',
precio: 18.50)
# . . .
Producto.create(titulo: 'Lechuga',
	descripcion:
	%{<p>
Soy una lechuga muy rica
</p>},
	url_imagen: 'lechuga.png',
precio: 30.00)
# . . .
Producto.create(titulo: 'Pan',
	descripcion:
	%{<p>
Soy un pan muy rico
</p>},
	url_imagen: 'pan.png',
precio: 20.50)
# . . .
Producto.create(titulo: 'Naranja',
	descripcion:
	%{<p>
Soy una naranja muy rica
</p>},
	url_imagen: 'naranja.png',
precio: 6.50)
# . . .
Producto.create(titulo: 'Coca-Cola',
	descripcion:
	%{<p>
Soy un Coca-Cola muy rica
</p>},
	url_imagen: 'coca.png',
precio: 26.50)
# . . .
Producto.create(titulo: 'Sprite',
	descripcion:
	%{<p>
Soy un Sprite muy rica
</p>},
	url_imagen: 'sprite.png',
precio: 25.00)
# . . .
Producto.create(titulo: 'Lata de Tomate',
	descripcion:
	%{<p>
Soy un lata de tomate muy rica
</p>},
	url_imagen: 'tomate_lata.png',
precio: 8.35)
# . . .
Producto.create(titulo: 'Botella de Tomate',
	descripcion:
	%{<p>
Soy una botella de tomate muy rica
</p>},
	url_imagen: 'tomate_botella.png',
precio: 28.80)
# . . .
Producto.create(titulo: 'Arbejas',
	descripcion:
	%{<p>
Soy una lata de arbejas muy rica
</p>},
	url_imagen: 'arbejas.png',
precio: 7.60)
# . . .
Producto.create(titulo: 'Jabon en Polvo',
	descripcion:
	%{<p>
Soy un jabon en polbo que lava muy bien
</p>},
	url_imagen: 'jabon_en_polvo.png',
precio: 15.40)
# . . .