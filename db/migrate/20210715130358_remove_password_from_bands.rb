class RemovePasswordFromBands < ActiveRecord::Migration[5.2]
  def change
    remove_column :bands, :password, :string
    remove_column :bands, :password_confirmation, :string
  end
end
