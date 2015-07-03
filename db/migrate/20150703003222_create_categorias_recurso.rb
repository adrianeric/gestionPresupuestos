class CreateCategoriasRecurso < ActiveRecord::Migration
  def change
    create_table :categorias_recurso do |t|

      t.timestamps null: false
    end
  end
end
