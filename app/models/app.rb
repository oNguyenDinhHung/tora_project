class App < ApplicationRecord
	mount_uploader :picture, PictureUploader
  belongs_to :maker
  belongs_to :store
  belongs_to :user
  belongs_to :category
  belongs_to :apptype
  has_many :reviews
  has_many :reviewed_users,through: :reviews,source: :user,dependent: :destroy
  has_many :photos
  has_many :kuchikomis  
  validates :name,uniqueness: true
  validates :originid,uniqueness: {scope: :store}
  validates :link,presence: true

  def rating
  	reviews.average(:value)
  end
end
