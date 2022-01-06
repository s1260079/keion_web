class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.string "band_name"
      t.text "band_members"
      t.text "band_message"
      t.integer "user_id"
      t.string "avatar_path"
      t.string "password"
      t.string "password_confirmation"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
