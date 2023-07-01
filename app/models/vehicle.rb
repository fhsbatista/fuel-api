class Vehicle < ApplicationRecord
  has_many :refuelings
  belongs_to :user
end
