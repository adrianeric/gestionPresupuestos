class CreateItemsPresupuesto < ActiveRecord::Migration
  def change
    create_table :items_presupuesto do |t|

        t.integer :presupuesto_id, unsigned: true, null: false
        t.text :descripcion, null: false
        t.decimal :monto_unitario, precision: 19, scale: 2, unsigned: true
        t.float :cantidad, unsigned: true
        t.integer :unidad_medida_id, unsigned: true
        t.float :plazo_entrega, unsigned: true, null: true
        t.string :texto_plazo_entrega, limit: 100


        t.timestamps null: false

        t.index :presupuesto_id

    end
  end
end
