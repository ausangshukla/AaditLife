json.extract! schedule, :id, :user_id, :workout_id, :scheduled_date, :completion_percentage, :rating, :comments, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
