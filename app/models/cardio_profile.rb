class CardioProfile < ApplicationRecord
	belongs_to :user
	belongs_to :fitness_test
end
