class ChangeTotalLikesToPrototypesLikes < ActiveRecord::Migration
  def change
    rename_column :prototypes, :total_likes, :likes_count
  end
end
