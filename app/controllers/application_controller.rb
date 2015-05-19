class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  ### CALLBACKS ###
  before_action :update_user_position

  def update_user_position
    if user_signed_in?
      c = current_user
      if (c.location != c.target_location_id) && (Time.now > c.travel_time)
        c.location_id = c.target_location_id
        c.save
      end
    end
  end
end  