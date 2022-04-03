class Pulse < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :pulse_categories, dependent: :destroy
  has_many :categories, through: :pulse_categories

  validates :pulse_content, presence: true, length: { minimum: 3 }

  def liked?(user)
    return true if Favorite.find_by(user: user, pulse: self)
    return false
  end

  # ----- searchbar -----
  include PgSearch::Model
  pg_search_scope :global_search, against: [:pulse_content],
  using: { tsearch: { prefix: true } },
  associated_against: { user: [ :nickname ] }
end
