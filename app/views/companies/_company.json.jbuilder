json.extract! company, :id, :name, :description, :allowed_signup_count, :created_at, :updated_at
json.url company_url(company, format: :json)
