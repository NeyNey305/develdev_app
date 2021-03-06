class SorceryRememberMe < ActiveRecord::Migration
  def change
    add_column :users, :crypted_password, :string, :null => false
      add_column :users, :salt, :string, :null => false
      add_column :users, :remember_me_token, :string, :default => nil
      add_column :users, :remember_me_token_expires_at, :datetime, :default => nil
      add_column :users, :reset_password_token, :string, :default => nil
      add_column :users, :reset_password_token_expires_at, :datetime, :default => nil
      add_column :users, :reset_password_email_sent_at, :datetime, :default => nil

      add_index :users, :remember_me_token
      add_index :users, :reset_password_token
  end
end
