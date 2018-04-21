class StrengthWorkoutSerializer < ActiveModel::Serializer
  attributes :id, :balance, :plank, :pushups, :one_leg_raise, :leg_raise_both, :squats, :crunches, :superman, :is_target, :current, :user_id
end
