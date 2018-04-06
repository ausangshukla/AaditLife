class GoalSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :goal_name, :goal_desc
end
