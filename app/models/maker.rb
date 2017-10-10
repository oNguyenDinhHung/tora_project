class Maker < ApplicationRecord
	validates :name,presence: true,uniqueness: true
end
