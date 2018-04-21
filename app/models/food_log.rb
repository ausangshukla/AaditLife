class FoodLog < ApplicationRecord
	MEAL_TYPES = ["Breakfast", "Lunch", "Dinner", "Snack"]
	belongs_to :user
end
