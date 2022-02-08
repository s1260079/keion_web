class CreateEnvironments < ActiveRecord::Migration[5.2]
  def change
    create_table :environments do |t|
      t.string :title1
      t.string :title2
      t.string :title3
      t.text :text
      t.timestamps
    end
  end
end
