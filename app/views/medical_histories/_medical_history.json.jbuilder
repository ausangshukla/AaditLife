json.extract! medical_history, :id, :user_id, :name, :value_type, :value, :created_at, :updated_at
json.url medical_history_url(medical_history, format: :json)
