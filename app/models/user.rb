class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable :recoverable, , :rememberable
  devise :database_authenticatable, :registerable, :trackable, :validatable

  ### VALIDATIONS ###
  validates :name, presence: true
  validates :race, presence: true

  ### RELATIONS ###
  belongs_to :location

  ### CALLBACKS ###
  before_create :default_values

  def default_values
    self.gold = 10
    self.level = 1
    self.location_id = 1
    self.target_location_id = 1
    self.travel_time = Time.now
  end
end
