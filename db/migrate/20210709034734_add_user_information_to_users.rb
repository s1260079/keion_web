class AddUserInformationToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :studentID, :string
    add_column :users, :part, :string
    add_column :users, :likeBand, :text
    add_column :users, :message, :text
  end
end
