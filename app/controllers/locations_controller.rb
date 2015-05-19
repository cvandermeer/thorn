class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :travel]
  before_action :travel_check, only: [:show, :travel]
  before_action :authenticate_user!

  def show
  end

  def travel
    c = current_user
    c.target_location_id = Location.find(2).id
    c.travel_time = Time.now + ((c.location.y_position - Location.find(2).y_position).abs)
    c.save
    redirect_to static_pages_map_path
  end

  private
    def set_location
      @location = Location.find(params[:id])
    end

    def travel_check
      if current_user.travel_time > Time.now
        redirect_to static_pages_map_path, notice: 'You are still traveling!'
      end
    end
end
