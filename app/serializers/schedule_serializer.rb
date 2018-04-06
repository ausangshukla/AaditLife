class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :workout_id, :scheduled_date, :completion_percentage, :rating, :comments
end
