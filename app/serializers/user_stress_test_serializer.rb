class UserStressTestSerializer < ActiveModel::Serializer
  attributes :id, :test_id, :stress_test_id, :user_id, :test_date, :score
end
