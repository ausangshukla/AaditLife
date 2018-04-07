require "administrate/base_dashboard"

class UserStressTestDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    test_id: Field::Number,
    stress_test_id: Field::Number,
    user_id: Field::Number,
    test_date: Field::DateTime,
    score: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :test_id,
    :stress_test_id,
    :user_id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :test_id,
    :stress_test_id,
    :user_id,
    :test_date,
    :score,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :test_id,
    :stress_test_id,
    :user_id,
    :test_date,
    :score,
  ].freeze

  # Overwrite this method to customize how user stress tests are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user_stress_test)
  #   "UserStressTest ##{user_stress_test.id}"
  # end
end
