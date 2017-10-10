class App < ApplicationRecord
	mount_uploader :picture, PictureUploader
  belongs_to :maker
  belongs_to :source
  has_many :reviews
  validates :name,presence: true,uniqueness: true
  def rating
  	reviews.average(:value)
  end
end
