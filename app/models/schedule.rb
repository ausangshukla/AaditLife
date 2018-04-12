class Schedule < ApplicationRecord
	belongs_to :user
	belongs_to :fitness_test	
	belongs_to :workout	
end
