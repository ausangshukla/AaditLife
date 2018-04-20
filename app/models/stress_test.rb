class StressTest < ApplicationRecord
	belongs_to :user

	RESPONSES = ["Never", "Almost Never", "Sometimes", "Fairly Often", "Very Often"]

	SCORES = {"UNEXPECTED_UPSET" => [0,1,2,3,4],
	"UNABLE_TO_CONTROL" => [0,1,2,3,4], 
	"NERVOUS" => [0,1,2,3,4], 
	"CONFIDENT" => [4,3,2,1,0], 
	"THINGS_GOING_RIGHT" => [4,3,2,1,0], 
	"CANNOT_COPE" => [0,1,2,3,4], 
	"CONTROL_IRRITATION" => [4,3,2,1,0], 
	"TOP_OF_THINGS" => [4,3,2,1,0], 
	"ANGER" => [0,1,2,3,4], 
	"DIFFICULTIES_PILING" => [0,1,2,3,4]}

	before_save :compute_score

	def compute_score
		total_score = 0

		fields = ["unexpected_upset", "unable_to_control", "nervous", "confident", "things_going_right", "cannot_cope", "control_irritation", "top_of_things", "anger", "difficulties_piling"]

		fields.each do |f|
			val = self[f]
			scores = SCORES[f.upcase]
			total_score = total_score + scores[RESPONSES.index(val)]
		end

		self.score = total_score
		if(self.score <= 13)
			self.score_interpretation = "Ideal"
		elsif(self.score > 13 && self.score <= 26)
			self.score_interpretation = "Moderate"
		elsif(self.score > 26)
			self.score_interpretation = "Severe"
		end   
	end
end
