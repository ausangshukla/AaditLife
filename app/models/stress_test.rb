class StressTest < ApplicationRecord
	belongs_to :user

	RESPONSES = ["Never", "Almost Never", "Sometimes", "Fairly Often", "Very Often"]

	UNEXPECTED_UPSET = [0,1,2,3,4]
	UNABLE_TO_CONTROL = [0,1,2,3,4], 
	NERVOUS = [0,1,2,3,4], 
	CONFIDENT = [4,3,2,1,0], 
	THINGS_GOING_RIGHT = [4,3,2,1,0], 
	CANNOT_COPE = [0,1,2,3,4], 
	CONTROL_IRRITATION = [4,3,2,1,0], 
	TOP_OF_THINGS = [4,3,2,1,0], 
	ANGER = [0,1,2,3,4], 
	DIFFICULTIES_PILING = [0,1,2,3,4]

	before_save :compute_score

	def compute_score

	end
end
