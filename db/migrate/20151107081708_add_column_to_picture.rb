class AddColumnToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :type, :tinyint
  end
end
