class Gig < ActiveRecord::Base
  belongs_to :user
  has_many :artists
  belongs_to :location
  mount_uploader :gig_image,  GigImageUploader
  geocoded_by :location
  after_validation :geocode
end
