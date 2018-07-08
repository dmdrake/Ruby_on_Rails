class Bike < ApplicationRecord
  has_many :rides
  reverse_geocoded_by :latitude, :longitude
end
