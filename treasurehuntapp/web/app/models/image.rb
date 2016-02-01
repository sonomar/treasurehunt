class Image < ActiveRecord::Base
  has_many :clue_images
  has_many :clues, through: :clue_images

  validates_presence_of :image_url
end 