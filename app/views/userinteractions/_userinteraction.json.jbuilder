json.extract! userinteraction, :id, :question, :answer, :parkinglot_id, :created_at, :updated_at
json.url userinteraction_url(userinteraction, format: :json)