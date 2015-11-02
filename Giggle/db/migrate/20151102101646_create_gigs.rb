class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :name
      t.string :price
      t.text :photoUrl
      t.string :startTime

      t.timestamps null: false
    end
  end
end
