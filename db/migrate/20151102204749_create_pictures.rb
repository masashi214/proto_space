class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string     :url
      t.references :prototype

      t.timestamps null: false
    end
  end
end
