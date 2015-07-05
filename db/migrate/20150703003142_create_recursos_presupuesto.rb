class CreateRecursosPresupuesto < ActiveRecord::Migration
  def change
    create_table :recursos_presupuesto do |t|

        t.column :items_presupuesto_id, :integer, :unsigned, null: false
        t.column :descripcion, :string, limit: 70, null: false
        t.decimal :monto_unitario, precision: 19, scale: 2, :unsigned, null: false
        t.float :cantidad, :unsigned, null: false
        t.string :modulo, limit: 2, null: false, default: 'UN'
        t.integer :proveedores_id, :unsigned, null: true
        t.string :presup_proveedor, limit: 40
        t.string :observacion, limit: 70, null: true
        t.decimal :peso_neto, precision: 19, scale: 2, :unsigned
        t.decimal :peso_bruto, precision: 19, scale: 2, :unsigned
        t.integer :categorias_recurso_id, null: false, :unsigned

        t.index :items_presupuesto_id, :categorias_recurso_id

    end
  end
end
