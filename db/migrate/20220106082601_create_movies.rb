class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title, :null => false
      t.string :content, :null => false
      t.integer :user_id

      t.timestamps
    end
  end
end
