class CreateBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.string :band_name
      t.text :band_members
      t.text :band_message
      t.string :password
      t.string :password_confirmation

      t.timestamps
    end
  end
end
