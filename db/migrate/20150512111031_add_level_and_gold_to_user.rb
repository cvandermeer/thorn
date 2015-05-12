class AddLevelAndGoldToUser < ActiveRecord::Migration
  def change
    add_column :users, :level, :integer
    add_column :users, :gold, :integer
  end
end
