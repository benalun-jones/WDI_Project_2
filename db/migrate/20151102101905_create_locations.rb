class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.text :street_address
      t.string :postcode_address

      t.timestamps null: false
    end
  end
end
