class Goal < ApplicationRecord
	belongs_to :user

	GOALS = { 	"REASON" => "The reason I want to sign up for the program is",
				"DELIGHT" => "In six months, I will be delighted if",
				"FREQ" => "My current frequency of physical activity is",
				"CURRENT" => "Briefly describe what you currently do for physical activity" }



	after_create :update_user_goals_done
	# Ensure if the test is done then the user profile is updated
	def update_user_goals_done
		self.user.goals_setup = true
		self.user.save
	end
end
