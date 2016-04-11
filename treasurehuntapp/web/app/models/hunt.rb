class Hunt < ActiveRecord::Base
	has_many :hunt_players
  has_many :players, through: :hunt_players, source: :user
  belongs_to :user
  has_many :clues

  validates_presence_of :length_in_miles, :area_in_miles
end  