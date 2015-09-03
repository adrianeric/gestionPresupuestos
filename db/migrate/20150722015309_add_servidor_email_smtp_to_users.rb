class AddServidorEmailSmtpToUsers < ActiveRecord::Migration
  def change
    add_column :users, :servidor_email_smtp, :string, limit: 100
  end
end
