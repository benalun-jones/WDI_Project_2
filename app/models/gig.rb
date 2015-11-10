class Gig < ActiveRecord::Base
  belongs_to :user
  has_many :artists
  belongs_to :location
  mount_uploader :gig_image,  GigImageUploader

  def self.search query
    unless query.blank?
      joins(:location).where("name ILIKE ? OR postcode_address ILIKE ? OR street_address ILIKE ?", "%#{query}%", "%#{query}%",  "%#{query}%")
    else
      all
    end
  end
end
