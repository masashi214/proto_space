class Prototype < ActiveRecord::Base
  mount_uploader :picture, PicturesUploader
  has_many :pictures

  accepts_nested_attributes_for :pictures
end
