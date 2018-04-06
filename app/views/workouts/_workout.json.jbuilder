json.extract! workout, :id, :user_id, :workout_type, :activity_time, :activity_speed, :recover_time, :repeats, :total_duration, :current, :created_at, :updated_at
json.url workout_url(workout, format: :json)
