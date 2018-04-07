require "administrate/base_dashboard"

class WorkoutDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    user_id: Field::Number,
    workout_type: Field::String,
    activity_time: Field::Number,
    activity_speed: Field::Number.with_options(decimals: 2),
    recovery_time: Field::Number,
    repeats: Field::Number,
    total_duration: Field::Number,
    current: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    recovery_speed: Field::Number.with_options(decimals: 2),
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :user_id,
    :workout_type,
    :activity_time,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :user_id,
    :workout_type,
    :activity_time,
    :activity_speed,
    :recovery_time,
    :repeats,
    :total_duration,
    :current,
    :created_at,
    :updated_at,
    :recovery_speed,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user_id,
    :workout_type,
    :activity_time,
    :activity_speed,
    :recovery_time,
    :repeats,
    :total_duration,
    :current,
    :recovery_speed,
  ].freeze

  # Overwrite this method to customize how workouts are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(workout)
  #   "Workout ##{workout.id}"
  # end
end
