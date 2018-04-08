require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    company: Field::BelongsTo,
    goals: Field::HasMany,
    medical_histories: Field::HasMany,
    targets: Field::HasMany,
    current_workouts: Field::HasMany.with_options(class_name: "Workout"),
    fitness_tests: Field::HasMany,
    id: Field::Number,
    email: Field::String,
    first_name: Field::String,
    last_name: Field::String,
    gender: Field::String,
    birth_year: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    role: Field::String,
    phone: Field::String,
    encrypted_password: Field::String,
    reset_password_token: Field::String,
    reset_password_sent_at: Field::DateTime,
    remember_created_at: Field::DateTime,
    sign_in_count: Field::Number,
    current_sign_in_at: Field::DateTime,
    last_sign_in_at: Field::DateTime,
    current_sign_in_ip: Field::String,
    last_sign_in_ip: Field::String,
    height: Field::Number,
    deleted_at: Field::DateTime,
    confirmation_token: Field::String,
    confirmed_at: Field::DateTime,
    confirmation_sent_at: Field::DateTime,
    provider: Field::String,
    uid: Field::String,
    tokens: Field::Text,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :first_name,
    :last_name,
    :email,
    :gender,
    :birth_year,
    :role,
    :company
    
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :company,
    :fitness_tests,
    :targets,
    :current_workouts,
    :id,
    :email,
    :first_name,
    :last_name,
    :gender,
    :birth_year,
    :created_at,
    :updated_at,
    :role,
    :phone,
    :height,
    
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :email,
    :first_name,
    :last_name,
    :gender,
    :birth_year,
    :role,
    :phone,
    :height,
  ].freeze

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(user)
     "#{user.first_name} #{user.last_name}"
  end
end
