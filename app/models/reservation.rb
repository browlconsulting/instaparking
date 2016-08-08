class Reservation < ActiveRecord::Base
  belongs_to :parkinglot
  belongs_to :user
end
