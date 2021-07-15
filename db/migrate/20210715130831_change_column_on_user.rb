class ChangeColumnOnUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :user_name, :string, null: false
    change_column :users, :student_id, :string, null: false
  end
end
