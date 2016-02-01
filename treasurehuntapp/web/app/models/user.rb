class User < ActiveRecord::Base
  has_secure_password

  has_many :hunts
  has_many :clue_users
  has_many :hunt_players
  has_many :clues, through: :clue_users
  has_many :hunts, through: :hunt_players

  validates_presence_of :username
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create
  validates_uniqueness_of :email, :username
end