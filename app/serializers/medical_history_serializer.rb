class MedicalHistorySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8,
        :q9, :q10, :q11, :specific_issue, :last_medical_checkup
end
