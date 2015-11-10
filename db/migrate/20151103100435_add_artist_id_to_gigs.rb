class AddArtistIdToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :artist_id, :integer
  end
end
