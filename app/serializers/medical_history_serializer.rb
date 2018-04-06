class MedicalHistorySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :value_type, :value
end
