class Gig < ActiveRecord::Base
  belongs_to :user
  has_many :artists
  belongs_to :location
end