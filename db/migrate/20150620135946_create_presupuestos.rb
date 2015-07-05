class CreatePresupuestos < ActiveRecord::Migration
  def change
    create_table :presupuestos do |t|

        t.integer :numero, :null => false, :unsigned => true
        t.date :fecha, :null => false
        t.integer :contacto_id, :null => false, :unsigned => true
        t.integer :mantenim_oferta, :limit => 5, :null => false
        t.string :observacion_imprimible, :limit => 600, :null => true
        t.string :observacion_interna, :limit => 600, :null => true
        t.integer :forma_de_pago_id, :limit => 5, :null => false, :unsigned => true
        t.integer :user_id, :null => false, :unsigned => true
        t.integer :moneda_id, :unsigned => true, :null => false
        t.integer :estado_presup_id, unsigned: true, null: false, default: 1

        t.index :numero

    end
  end
end
