require "administrate/base_dashboard"

class StressTestDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    unexpected_upset: Field::String,
    unable_to_control: Field::String,
    nervous: Field::String,
    confident: Field::String,
    things_going_right: Field::String,
    cannot_cope: Field::String,
    control_irritation: Field::String,
    top_of_things: Field::String,
    anger: Field::String,
    difficulties_piling: Field::String,
    test_date: Field::DateTime,
    score: Field::Number,
    score_interpretation: Field::String,
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
    :unexpected_upset,
    :unable_to_control,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :id,
    :unexpected_upset,
    :unable_to_control,
    :nervous,
    :confident,
    :things_going_right,
    :cannot_cope,
    :control_irritation,
    :top_of_things,
    :anger,
    :difficulties_piling,
    :test_date,
    :score,
    :score_interpretation,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :unexpected_upset,
    :unable_to_control,
    :nervous,
    :confident,
    :things_going_right,
    :cannot_cope,
    :control_irritation,
    :top_of_things,
    :anger,
    :difficulties_piling,
    :test_date,
    :score,
    :score_interpretation,
  ].freeze

  # Overwrite this method to customize how stress tests are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(stress_test)
  #   "StressTest ##{stress_test.id}"
  # end
end
