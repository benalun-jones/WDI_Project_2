class ChangeUsenameToUsername < ActiveRecord::Migration

  def change
    rename_column :users, :usename, :username
  end
end
