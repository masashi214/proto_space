class Prototype < ActiveRecord::Base
  mount_uploader :picture, PicturesUploader
end
