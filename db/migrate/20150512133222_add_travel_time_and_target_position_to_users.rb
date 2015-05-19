class AddTravelTimeAndTargetPositionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :travel_time, :datetime
    add_column :users, :target_location_id, :integer
  end
end
