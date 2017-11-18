class App < ApplicationRecord
	mount_uploader :picture, PictureUploader
  mount_uploaders :photos, PhotoUploader
  serialize :photos, JSON
  belongs_to :maker
  belongs_to :store
  belongs_to :user
  belongs_to :category
  belongs_to :apptype
  has_many :reviews
  has_many :reviewed_users,through: :reviews,source: :user,dependent: :destroy
  has_many :photos
  has_many :kuchikomis  
  validates :name,presence: true,uniqueness: true
  validates :originid,presence: true,uniqueness: {scope: :store}
  validates :link,presence: true

  def rating
  	avg = reviews.average(:value)
    if avg
      return avg
    else
      return 0
    end
  end
end
