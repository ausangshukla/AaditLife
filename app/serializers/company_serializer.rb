class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :allowed_signup_count
end
