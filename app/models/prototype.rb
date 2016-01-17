class Prototype < ActiveRecord::Base
  mount_uploader :picture, PicturesUploader
  has_many :pictures
  has_many :likes
  accepts_nested_attributes_for :pictures
  belongs_to :user
  acts_as_taggable
end
