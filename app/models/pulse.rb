class Pulse < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :pulse_categories, dependent: :destroy
  has_many :categories, through: :pulse_categories

  validates :pulse_content, presence: true, length: { minimum: 3 }
  # mettre une length min et max

  def liked?(user)
    return true if Favorite.find_by(user: user, pulse: self)
    return false
  end

end
