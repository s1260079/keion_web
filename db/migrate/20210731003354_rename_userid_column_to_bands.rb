class RenameUseridColumnToBands < ActiveRecord::Migration[5.2]
  def change
    rename_column :bands, :user_id,  :integer
  end
end
