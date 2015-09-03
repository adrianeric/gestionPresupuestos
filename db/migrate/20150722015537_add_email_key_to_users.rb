class AddEmailKeyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email_key, :string, limit: 50
  end
end
