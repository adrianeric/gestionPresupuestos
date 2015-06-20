class CreateTratamientos < ActiveRecord::Migration
  
  def change
    create_table :tratamientos do |t|

        t.string :descripcion, :limit => 10, :null => false
    end

  end

end
