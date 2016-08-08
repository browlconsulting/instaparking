json.extract! reservation, :id, :datestart, :timestart, :dateend, :timeend, :byhour, :byday, :parkinglot_id, :user_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)