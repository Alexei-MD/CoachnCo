class Offer < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  SPORT = %w(Tennis Bascket-Ball Rugby Foot-Ball Golf Gym)
end
