class Picture < ActiveRecord::Base
  mount_uploader :picture, PicturesUploader
  enum type: { main: 1, sub: 2 }

end
