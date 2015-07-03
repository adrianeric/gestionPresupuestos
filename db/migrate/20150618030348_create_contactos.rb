class CreateContactos < ActiveRecord::Migration

  def change
    create_table :contactos do |t|

        t.string :nombre, :limit => 50, :null => false
        t.string :apellido, :limit => 20, :null => false
        t.integer :cliente_id, :unsigned => true, :null => false
        t.integer :tratamiento_id, :unsigned => true, :null => false
        t.string :email, :null => true
        t.column :habilitado, :boolean, default: true

        t.timestamps null: false
    end

  end
  
end
