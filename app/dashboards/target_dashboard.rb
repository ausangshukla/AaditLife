require "administrate/base_dashboard"

class TargetDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    start_date: Field::DateTime,
    end_date: Field::DateTime,
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
    user_id: Field::Number,
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
    :user,
    :start_date,
    :end_date,
    :weight,
    :fat_percentage,
    :body_age,
    :bmi,
    :rm,
    :visc_fat,
    :sc_fat
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :start_date,
    :end_date,
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
    :user_id,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :start_date,
    :end_date,
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
    :user_id,
  ].freeze

  # Overwrite this method to customize how targets are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(target)
  #   "Target ##{target.id}"
  # end
end
