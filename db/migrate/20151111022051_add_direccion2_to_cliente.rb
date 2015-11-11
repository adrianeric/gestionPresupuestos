class AddDireccion2ToCliente < ActiveRecord::Migration
  def change
    add_column :clientes, :direccion2, :string, :limit => 100
    add_column :clientes, :provincia2, :string, :limit => 50
    add_column :clientes, :localidad2, :string, :limit => 100
    add_column :clientes, :codPostal2, :string, :limit => 20
  end
end
