class Picture < ActiveRecord::Base
  mount_uploader :file, PicturesUploader
  enum type: { main: 1, sub: 2 }
  belongs_to :prototype
end
