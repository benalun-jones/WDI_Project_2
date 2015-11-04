class AddStreetAddress2ToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :street_address_2, :string
  end
end
