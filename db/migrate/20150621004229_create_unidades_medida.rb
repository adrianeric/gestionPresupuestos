class CreateUnidadesMedida < ActiveRecord::Migration
  def change
    create_table :unidades_medida do |t|

        t.column :descripcion, :string, null:false
        t.column :simbolo, :string, limit: 3, null: false

    end
  end
end
