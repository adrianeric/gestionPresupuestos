class CreateItemsPresupuesto < ActiveRecord::Migration
  def change
    create_table :items_presupuesto do |t|

      t.timestamps null: false
    end
  end
end
