class Clue < ActiveRecord::Base
  belongs_to :hunt
  has_many :clue_users
  has_many :users, through: :clue_users
  has_many :clue_images
  has_many :images, through: :clue_images

  validates_presence_of :clue_number, :clue_content, :clue_points
end