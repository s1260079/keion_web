class ChangeColumnOnBand < ActiveRecord::Migration[5.2]
  def change
    change_column :bands, :band_name, :string, null: false
    change_column :bands, :band_members, :text, null: false
  end
end
