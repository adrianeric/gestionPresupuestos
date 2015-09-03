class AddApellidoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :apellido, :string, :limit => 50
  end
end
