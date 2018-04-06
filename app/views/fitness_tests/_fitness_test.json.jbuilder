json.extract! fitness_test, :id, :test_date, :weight, :fat_percentage, :body_age, :bmi, :rm, :visc_fat, :sc_fat, :muscle_percentage, :fat_kg, :muscle_kg, :other_kg, :fat_loss, :muscle_gain, :max_speed, :duration, :reason_for_stopping, :test_details, :user_id, :coach_id, :max_heart_rate, :created_at, :updated_at
json.url fitness_test_url(fitness_test, format: :json)
