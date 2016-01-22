class HuntPlayer < ActiveRecord::Base
  belongs_to :player, class_name: "User", foreign_key: :user_id
  belongs_to :hunt

  validates_presence_of :completed, :current_score, :num_clues_completed
end 