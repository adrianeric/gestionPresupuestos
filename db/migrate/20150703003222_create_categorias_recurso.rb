class CreateCategoriasRecurso < ActiveRecord::Migration
  def change
    create_table :categorias_recurso do |t|

        t.column :descripcion, :string, limit: 30, null: false
        
    end
  end
end
