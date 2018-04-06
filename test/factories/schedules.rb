FactoryGirl.define do
  factory :schedule do
    user_id 1
    workout_id 1
    scheduled_date "2018-04-06"
    completion_percentage 1
    rating 1
    comments "MyText"
  end
end
