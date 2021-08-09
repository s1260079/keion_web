class ChangeDataHanteiToJudgment < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :hantei, :judgment
  end
end
