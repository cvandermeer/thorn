class AddNameAndClassToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :race, :string
  end
end
