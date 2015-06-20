class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
        
        t.string :nombre, :limit => 50, :null => true
        t.string :direccion, :limit => 100, :null => true
        t.string :provincia, :limit => 50, :null => true
        t.string :localidad, :limit => 100, :null => true
        t.string :codPostal, :limit => 20, :null => true
        t.string :pais, :limit => 30, :null => true
        t.string :telefono1, :limit => 30, :null => true
        t.string :valorIdentificador, :limit => 20, :null => true
        t.integer :respons_IVA, :limit => 2, unsigned: true, :null=> false, default: 1
        t.string :tipoIdentificador, :limit => 10, :null=> true
        t.integer :forma_de_pago_id, :limit => 2, unsigned: true, :null=> false
        t.integer :moneda_id, unsigned: true, :null => false, default: 1
        t.timestamps null: false

        t.index :valorIdentificador
      
    end
  end
end
