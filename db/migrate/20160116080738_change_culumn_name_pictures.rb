class ChangeCulumnNamePictures < ActiveRecord::Migration
  def change
    rename_column :pictures, :url, :file
  end
end
