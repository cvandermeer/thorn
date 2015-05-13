class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :y_position

      t.timestamps null: false
    end
  end
end
