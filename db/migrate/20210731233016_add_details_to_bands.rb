class AddDetailsToBands < ActiveRecord::Migration[5.2]
  def change
    add_column :bands, :avatar_path, :string
  end
end
