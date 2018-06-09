class FitnessTestSerializer < ActiveModel::Serializer
  attributes :id, :test_date, :weight, :height, :fat_percentage, :body_age, :bmi, :rm, :visc_fat, :sc_fat, 
  :muscle_percentage, :fat_kg, :muscle_kg, :other_kg, :fat_loss, :muscle_gain, :max_speed, :duration, 
  :reason_for_stopping, :test_details, :user_id, :coach_id, :max_heart_rate, :wellness_index, :current

  has_many :cardio_profiles, serializer: CardioProfileSerializer
end
