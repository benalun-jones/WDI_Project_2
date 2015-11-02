class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.text :streetAddress
      t.string :postcodeAddress

      t.timestamps null: false
    end
  end
end
