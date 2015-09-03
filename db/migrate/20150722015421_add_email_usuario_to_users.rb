class AddEmailUsuarioToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email_usuario, :string, limit: 100
  end
end
