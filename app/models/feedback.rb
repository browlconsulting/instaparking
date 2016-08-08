class Feedback < ActiveRecord::Base
  belongs_to :reservation
   enum score: [:MuyMalo, :Malo, :Regular, :Bueno, :MuyBueno]
end
