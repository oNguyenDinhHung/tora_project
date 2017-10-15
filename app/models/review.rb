class Review < ApplicationRecord
  belongs_to :user
  belongs_to :app
  validates :text,presence: true
  validates :value,presence: true,numericality: {greater_than: 0,less_than: 6}
end
