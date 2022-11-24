class Offer < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  SPORT = %w(Escalade Tennis Swimming Running Golf Gym)
end
