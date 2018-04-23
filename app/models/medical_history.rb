class MedicalHistory < ApplicationRecord
	belongs_to :user
	
	after_create :update_user_medicals_done
	# Ensure if the medicals is done then the user profile is updated
	def update_user_medicals_done
		self.user.medical_setup = true
		self.user.save!
	end
end
