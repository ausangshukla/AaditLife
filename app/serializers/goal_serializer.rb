class GoalSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :reason, :delight, :frequency, :current_activity
end
