class App < ApplicationRecord
  belongs_to :maker
  belongs_to :source
  belongs_to :keyword
end
