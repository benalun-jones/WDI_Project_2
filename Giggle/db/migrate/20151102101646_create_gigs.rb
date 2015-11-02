class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :name
      t.string :price
      t.text :photo_url
      t.string :start_time

      t.timestamps null: false
    end
  end
end
