class Pulse < ApplicationRecord
  belongs_to :user
  validates :pulse_content, presence: true
  # mettre une length min et max
end
