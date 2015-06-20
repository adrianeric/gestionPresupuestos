class CreateEsquemasDeVencimiento < ActiveRecord::Migration
  def change
    create_table :esquemas_de_vencimiento do |t|

        t.integer :forma_de_pago_id, :null => false, :unsigned => true
        t.integer :dias_al_vencimiento, :null => false, :unsigned => true
        t.decimal :porcentaje_pago, :null => true, :unsigned => true
        t.string :descripcion_pago, :null => false, :limit => 50

    end
  end
end
