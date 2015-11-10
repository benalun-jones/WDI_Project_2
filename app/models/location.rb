class Location < ActiveRecord::Base
  has_many :gigs
  geocoded_by :postcode_address
  after_validation :geocode
end
