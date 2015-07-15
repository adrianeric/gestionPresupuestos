class CreateRecursosPresupuesto < ActiveRecord::Migration
  def change
    create_table :recursos_presupuesto do |t|

        t.column :item_presupuesto_id, :integer, unsigned: true, null: false
        t.column :descripcion, :string, :limit => 70, null: false
        t.decimal :monto_unitario, :precision => 19, :scale => 2, unsigned: true, null: false
        t.float :cantidad, :unsigned, null: false
        t.string :modulo, limit: 2, null: false, default: 'UN'
        t.integer :proveedor_id, :unsigned, null: true
        t.string :presup_proveedor, limit: 40
        t.string :observacion, limit: 70, null: true
        t.column :peso_neto, :decimal, :precision => 19, :scale => 2, unsigned: true
        t.column :peso_bruto, :decimal, :precision => 19, :scale => 2, unsigned: true
        t.integer :categoria_recurso_id, null: false, unsigned: true

        t.index :item_presupuesto_id
        t.index :categoria_recurso_id

    end
  end
end
