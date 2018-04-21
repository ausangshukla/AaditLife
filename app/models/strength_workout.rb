class StrengthWorkout < ApplicationRecord
	
	belongs_to :user

	before_create :make_current
	
	# Note that there are 2 types of StrengthWorkout
	# 1. Is of the type target : is_target = true. This is the target to be achieved by the runner
	# 2. Is of the type current : current = true. This keeps changing based on how the user is training
	def make_current
		self.current = true
		# Ensure the prev workout is marked as not current
		prev = self.is_target ? self.user.target_strength_workout : self.user.current_strength_workout
		if(prev)
			prev.current = false
			prev.save
		end
	end

end
