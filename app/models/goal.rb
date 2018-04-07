class Goal < ApplicationRecord
	belongs_to :user

	GOALS = { 	"REASON" => "The reason I want to sign up for the program is",
				"DELIGHT" => "In six months, I will be delighted if",
				"FREQ" => "My current frequency of physical activity is",
				"CURRENT" => "Briefly describe what you currently do for physical activity" }



end
