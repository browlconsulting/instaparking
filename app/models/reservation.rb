class Reservation < ActiveRecord::Base
  belongs_to :parkinglot
  belongs_to :user
  has_many :feedbacks
end
