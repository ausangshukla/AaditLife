class FitnessTest < ApplicationRecord
	belongs_to :user
	has_many :workouts

	before_create :make_current
	before_save :update_workouts

	def make_current
		self.current = true
		# Ensure the prev FitnessTest is marked as not current
		prev = self.user.current_fitness_test
		if(prev)
			prev.current = false
			prev.save
		end
	end

	# ensure that all its workouts are also updated
	# If this was updated to current then all its workouts should also be current and vice versa
	def update_workouts
		if(self.current_was != self.current)
			self.workouts.update_all(current: self.current)
		end
	end
end
