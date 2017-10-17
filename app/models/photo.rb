class Photo < ApplicationRecord
	mount_uploader :image, PictureUploader
  belongs_to :app
end
