require "administrate/base_dashboard"

class StrengthWorkoutDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    balance: Field::Number,
    plank: Field::Number,
    pushups: Field::Number,
    one_leg_raise: Field::Number,
    leg_raise_both: Field::Number,
    squats: Field::Number,
    crunches: Field::Number,
    superman: Field::Number,
    is_target: Field::Boolean,
    current: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :id,
    :current,
    :is_target,
    :balance,
    :plank,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :id,
    :balance,
    :plank,
    :pushups,
    :one_leg_raise,
    :leg_raise_both,
    :squats,
    :crunches,
    :superman,
    :is_target,
    :current,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :balance,
    :plank,
    :pushups,
    :one_leg_raise,
    :leg_raise_both,
    :squats,
    :crunches,
    :superman,
    :is_target,
    :current,
  ].freeze

  # Overwrite this method to customize how strength workouts are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(strength_workout)
  #   "StrengthWorkout ##{strength_workout.id}"
  # end
end
