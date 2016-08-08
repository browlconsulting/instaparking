json.extract! feedback, :id, :description, :score, :reservation_id, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)