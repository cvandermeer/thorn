class StaticPagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]
  before_action :travel_check, only: [:travel]

  def home
  end

  def map
    @town = Location.find(1)
    @castle = Location.find(2)
  end

  def travel
    c = current_user
    c.travel_time = Time.now + 30
    if c.save
      redirect_to static_pages_map_path
    end
  end

  private
    def travel_check
      if current_user.travel_time > Time.now
        redirect_to static_pages_map_path, notice: 'You are still traveling!'
      end
    end
end
