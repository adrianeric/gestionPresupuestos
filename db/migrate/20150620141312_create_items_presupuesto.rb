class CreateItemsPresupuesto < ActiveRecord::Migration
  def change
    create_table :items_presupuesto do |t|

        t.column :presupuesto_id, :integer, unsigned: true, null: false
        t.column :descripcion, :text, null: false
        t.column :monto_unitario, :decimal, precision: 19, scale: 2, unsigned: true
        t.column :cantidad, :float, unsigned: true
        t.column :unidad_medida_id, :integer, unsigned: true
        t.column :plazo_entrega, :float, unsigned: true, null: true
        t.column :texto_plazo_entrega, :string, limit: 100
        t.column :adjudicado, :boolean, default: false
        t.column :peso_neto_total, :integer, unsigned: true, null: true
        t.column :peso_bruto_total, :integer, unsigned: true, null: true


        t.index :presupuesto_id

    end
  end
end
