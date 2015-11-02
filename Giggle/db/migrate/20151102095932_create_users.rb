class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :secondname
      t.string :usename
      t.string :password
      t.string :email

      t.timestamps null: false
    end
  end
end
