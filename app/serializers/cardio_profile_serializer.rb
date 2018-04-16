class CardioProfileSerializer < ActiveModel::Serializer
  attributes :id, :fitness_test_id, :user_id, :on_date, :speed, :bpm
end
