class CreateEstadosPresupuesto < ActiveRecord::Migration
  def change
    create_table :estados_presupuesto do |t|

        t.column :descripcion, :string, limit: 50, null: false
      
    end
  end
end
