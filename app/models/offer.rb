class Offer < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :name, presence: true
  validates :sport, presence: true
  validates :price, presence: true
  validates :niveau, presence: true

  SPORT = %w(Tennis Escalade Bascket-Ball Rugby Foot-Ball Golf Gym)
  NIV = %w(1 2 3 4 5)
end
