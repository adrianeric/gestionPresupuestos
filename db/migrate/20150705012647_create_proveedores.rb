class CreateProveedores < ActiveRecord::Migration
  def change
    create_table :proveedores do |t|

        t.string :nombre, limit: 50, null: false
        t.string :direccion, limit: 100, null: false
        t.string :direccion_deposito, limit: 100, null: true
        t.string :provincia, limit: 50, null: false
        t.string :localidad, limit: 50, null: true
        t.string :ciudad, limit: 50, null: true
        t.string :cod_postal, limit: 20, null: true
        t.string :pais, limit: 30, null: false
        t.string :identificacion_impuesto, limit: 30, null: false
        t.string :nombre_impuesto, limit: 20, null: false
        t.string :telefono1, limit: 20, null: true
        t.string :telefono2, limit: 20, null: true
        t.integer :moneda_id, :unsigned, default: 1
        t.decimal :descuento_gral, precision: 3, scale: 2, null: true, default: 0
        t.integer :forma_de_pago_id, :unsigned => true


    end
  end
end
