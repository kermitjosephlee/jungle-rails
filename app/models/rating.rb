class Rating < ActiveRecord::Base
  validates :product, presence: true
  validates :user, presence: true
  validates :description, presence: true
  validates :rating, presence: true
end
