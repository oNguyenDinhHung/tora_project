class App < ApplicationRecord
	mount_uploader :picture, PictureUploader
  belongs_to :maker
  belongs_to :store
  belongs_to :user
  has_many :reviews
  has_many :reviewed_users,through: :reviews,source: :user,dependent: :destroy
  validates :name,presence: true,uniqueness: true
  def rating
  	reviews.average(:value)
  end
end
