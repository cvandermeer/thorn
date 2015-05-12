class StaticPagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]

  def home
  end

  def map
  end

  def town
  end

  def castle
  end
end
