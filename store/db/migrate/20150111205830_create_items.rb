class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :id_producto
      t.integer :id_carrito

      t.timestamps
    end
  end
end
