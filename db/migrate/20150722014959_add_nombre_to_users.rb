class AddNombreToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nombre, :string, limit: 50
  end
end
