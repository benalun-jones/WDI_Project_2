class AddGigImageToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :gig_image, :string
  end
end
