json.extract! goal, :id, :user_id, :goal_name, :goal_desc, :created_at, :updated_at
json.url goal_url(goal, format: :json)
