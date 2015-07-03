class CreateRecursosPresupuesto < ActiveRecord::Migration
  def change
    create_table :recursos_presupuesto do |t|

      t.timestamps null: false
    end
  end
end
