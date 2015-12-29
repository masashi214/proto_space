class Picture < ActiveRecord::Base
  mount_uploader :picture, PicturesUploader
  enum type: { main: 1, sub: 2 }
  belongs_to :prototype
  has_attached_file :photo,
                    :styles => {
                        :thumb  => '100*100',
                        :medium => '200*200',
                        :large  => '600*400',
                     },
                     :storage => :s3,
                     :s3_credentials => File.join(Rails.root, 'config', 's3.yml'),
                     :path => ":attachment/:id/:style.:extension"

end
