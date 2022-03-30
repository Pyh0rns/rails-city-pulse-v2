class Pulse < ApplicationRecord
  belongs_to :user
  has_many :favorites
  validates :pulse_content, presence: true
  # mettre une length min et max

  def liked?(user)
    return true if Favorite.find_by(user: user, pulse: self)
    return false
  end

end
