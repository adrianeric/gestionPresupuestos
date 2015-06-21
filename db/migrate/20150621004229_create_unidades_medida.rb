class CreateUnidadesMedida < ActiveRecord::Migration
  def change
    create_table :unidades_medida do |t|

      t.timestamps null: false
    end
  end
end
