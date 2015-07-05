class CreateProveedores < ActiveRecord::Migration
  def change
    create_table :proveedores do |t|

      t.timestamps null: false
    end
  end
end
