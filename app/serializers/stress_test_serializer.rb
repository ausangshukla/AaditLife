class StressTestSerializer < ActiveModel::Serializer
  attributes :id, :unexpected_upset, :unable_to_control, :nervous, :confident, 
  :things_going_right, :cannot_cope, :control_irritation, :top_of_things, :anger, 
  :difficulties_piling, :user_id, :test_date, :score, :score_interpretation, :created_at
end
