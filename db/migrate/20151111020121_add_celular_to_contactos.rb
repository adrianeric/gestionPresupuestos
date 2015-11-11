class AddCelularToContactos < ActiveRecord::Migration
  def change
    add_column :contactos, :celular, :string, :limit => 20
    
  end
end
