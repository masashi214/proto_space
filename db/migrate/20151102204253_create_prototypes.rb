class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.string     :title
      t.string     :catch_copy
      t.string     :concept
      t.integer    :total_likes
      t.references :user

      t.timestamps null: false
    end
  end
end
