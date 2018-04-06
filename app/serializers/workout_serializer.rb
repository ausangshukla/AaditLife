class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :workout_type, :activity_time, :activity_speed, :recover_time, :repeats, :total_duration, :current
end
