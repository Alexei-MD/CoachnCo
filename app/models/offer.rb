class Offer < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  SPORT = %w(Escalade Tennis Swimming Running Golf Gym)
  NIV = %w(1 2 3 4 5)
  
  validates :name, presence: true
  validates :sport, presence: true
  validates :price, presence: true
  validates :niveau, presence: true
  
end
