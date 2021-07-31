class ChangeDataUseridToBand < ActiveRecord::Migration[5.2]
  def change
    change_column :bands,  :user_id,  :integer
  end
end
