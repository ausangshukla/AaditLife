require "administrate/base_dashboard"

class MedicalHistoryDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    last_medical_checkup: Field::String,
    q1: Field::Boolean,
    q2: Field::Boolean,
    q3: Field::Boolean,
    q4: Field::Boolean,
    q5: Field::Boolean,
    q6: Field::Boolean,
    q7: Field::Boolean,
    q8: Field::Boolean,
    q9: Field::Boolean,
    q10: Field::Boolean,
    q11: Field::Boolean,
    specific_issue: Field::Text,
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
    :last_medical_checkup,
    :specific_issue,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :id,
    :last_medical_checkup,
    :q1,:q2,:q3,:q4,:q5,:q6,:q7,:q8,:q9,:q10,:q11,
    :specific_issue,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :last_medical_checkup,
    :q1,:q2,:q3,:q4,:q5,:q6,:q7,:q8,:q9,:q10,:q11,
    :specific_issue,
  ].freeze

  # Overwrite this method to customize how medical histories are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(medical_history)
  #   "MedicalHistory ##{medical_history.id}"
  # end
end
