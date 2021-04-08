class AddColumnToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :account_type, :string
    add_column :users, :profile_photo, :string
    add_column :users, :verified, :string
  end
end
