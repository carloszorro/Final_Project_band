class Band < ApplicationRecord
  belongs_to :genre
  has_many :reservations

end
