class Apptype < ApplicationRecord
	validates :name,presence: true,uniqueness: true
	has_many :apps,dependent: :destroy
end
