class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :titulo
      t.text :descripcion
      t.string :url_imagen
      t.decimal :precio

      t.timestamps
    end
  end
end
