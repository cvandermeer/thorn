class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable :recoverable, , :rememberable
  devise :database_authenticatable, :registerable, :trackable, :validatable

  ### VALIDATIONS ###
  validates :name, presence: true
  validates :race, presence: true
end
