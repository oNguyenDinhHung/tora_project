class App < ApplicationRecord
  belongs_to :maker
  belongs_to :source
  belongs_to :keyword
  validates :name,presence: true,uniqueness: true
end
