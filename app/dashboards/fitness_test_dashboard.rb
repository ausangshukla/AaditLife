require "administrate/base_dashboard"

class FitnessTestDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    current_workouts: Field::HasMany.with_options(class_name: "Workout"),
    cardio_profiles: Field::HasMany,
    id: Field::Number,
    test_date: Field::DateTime,
    weight: Field::Number.with_options(decimals: 2),
    fat_percentage: Field::Number.with_options(decimals: 2),
    body_age: Field::Number,
    bmi: Field::Number.with_options(decimals: 2),
    rm: Field::Number.with_options(decimals: 2),
    visc_fat: Field::Number.with_options(decimals: 2),
    sc_fat: Field::Number.with_options(decimals: 2),
    muscle_percentage: Field::Number.with_options(decimals: 2),
    fat_kg: Field::Number.with_options(decimals: 2),
    muscle_kg: Field::Number.with_options(decimals: 2),
    other_kg: Field::Number.with_options(decimals: 2),
    fat_loss: Field::Number.with_options(decimals: 2),
    muscle_gain: Field::Number.with_options(decimals: 2),
    max_speed: Field::Number.with_options(decimals: 2),
    duration: Field::Number.with_options(decimals: 2),
    reason_for_stopping: Field::String,
    test_details: Field::Text,
    user_id: Field::Number,
    coach_id: Field::Number,
    max_heart_rate: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    current: Field::Boolean
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :test_date,
    :weight,
    :fat_percentage,
    :body_age,
    :bmi,
    :rm,
    :visc_fat,
    :sc_fat,
    :muscle_percentage,
    :current    
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :test_date,
    :weight,
    :fat_percentage,
    :body_age,
    :bmi,
    :rm,
    :visc_fat,
    :sc_fat,
    :muscle_percentage,
    :fat_kg,
    :muscle_kg,
    :other_kg,
    :fat_loss,
    :muscle_gain,
    :max_speed,
    :duration,
    :reason_for_stopping,
    :test_details,
    :user_id,
    :coach_id,
    :max_heart_rate,
    :created_at,
    :updated_at,
    :current,
    :current_workouts,
    :cardio_profiles
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :test_date,
    :weight,
    :fat_percentage,
    :body_age,
    :bmi,
    :rm,
    :visc_fat,
    :sc_fat,
    :muscle_percentage,
    :fat_kg,
    :muscle_kg,
    :other_kg,
    :fat_loss,
    :muscle_gain,
    :max_speed,
    :duration,
    :reason_for_stopping,
    :test_details,
    :user_id,
    :coach_id,
    :max_heart_rate,
    :current
  ].freeze

  # Overwrite this method to customize how fitness tests are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(fitness_test)
  #   "FitnessTest ##{fitness_test.id}"
  # end
end
