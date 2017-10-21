class Kuchikomi < ApplicationRecord
  belongs_to :user
  belongs_to :app
  validates :text,presence: true
end
