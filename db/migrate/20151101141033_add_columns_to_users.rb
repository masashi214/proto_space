class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :member, :string
    add_column :users, :works, :string
    add_column :users, :profile, :string
    add_column :users, :avatar, :string
  end
end
