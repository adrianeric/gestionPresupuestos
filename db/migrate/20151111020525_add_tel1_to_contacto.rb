class AddTel1ToContacto < ActiveRecord::Migration
  def change
    add_column :contactos, :tel1, :string, :limit => 20
    add_column :contactos, :tel2, :string, :limit => 20
    
  end
end
