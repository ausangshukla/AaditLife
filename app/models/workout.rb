class Workout < ApplicationRecord
	WORKOUT_TYPES = ["Long", "Tempo", "Interval", "Speed"]
	belongs_to :user
	belongs_to :fitness_test

	before_create :update_current

	def update_current
		self.current = self.fitness_test.current
	end
end
