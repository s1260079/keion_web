class RenameStudentIdColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :username, :user_name
    rename_column :users, :studentID, :student_id
    rename_column :users, :likeBand, :like_band
  end
end
