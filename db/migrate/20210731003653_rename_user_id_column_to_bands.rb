class RenameUserIdColumnToBands < ActiveRecord::Migration[5.2]
  def change
    rename_column :bands,:integer , :user_id
  end
end
