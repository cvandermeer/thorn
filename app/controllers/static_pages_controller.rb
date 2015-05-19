class StaticPagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]

  def home
  end

  def map
    @town = Location.find(1)
    @castle = Location.find(2)
  end
end
