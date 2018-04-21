class FoodLogSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :meal, :intake_date, :details
end
