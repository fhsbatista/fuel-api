class Refueling < ApplicationRecord
  belongs_to :destination
  belongs_to :vehicle
  belongs_to :user
  validates :date, presence: true
  validates :quantity, presence: true
  validates :hodometer, presence: true
  validates :vehicle_id, presence: true
  validates :destination_id, presence: true
end
