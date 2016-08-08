class Parkinglot < ActiveRecord::Base
  belongs_to :user
  belongs_to :ubigeo
  belongs_to :nearby
end
