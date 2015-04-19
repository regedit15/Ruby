class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :producto_id
      t.integer :carrito_id

      t.timestamps
    end
  end
end
