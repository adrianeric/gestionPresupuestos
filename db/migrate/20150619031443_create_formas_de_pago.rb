class CreateFormasDePago < ActiveRecord::Migration
  def change
    create_table :formas_de_pago do |t|

       t.string :descripcion, :null => false 

    end
  end
end
