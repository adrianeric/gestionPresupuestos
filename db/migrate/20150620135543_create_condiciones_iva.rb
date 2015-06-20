class CreateCondicionesIva < ActiveRecord::Migration
  def change
    create_table :condiciones_iva do |t|

        t.string :descripcion, :limit => 50, :null => false

    end

  end
  
end
