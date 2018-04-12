class FitnessTest < ApplicationRecord
	belongs_to :user
	has_many :workouts
	has_many :schedules

	has_many :current_workouts, -> (object) { 
           where("workouts.fitness_test_id = ?", object.id)
         },
         :class_name => 'Workout'

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


	def generate_schedule(start_date, num_days)
		# we get the start and end dates
		start_date = start_date.beginning_of_week + 1.day # Start on Tue
		end_date = (start_date + num_days.days).end_of_week

		# Map the current workouts to the workout_type
		workout_map = {}
		current_workouts.each do |w|
			workout_map[w.workout_type] = w
		end

		# This will be the repeated sequence of workouts
		workout_sequence = ["Tempo", "Interval", "Long", "Tempo", "Speed", "Long"]
		
		i = 0
		rest_day = false
		(start_date..end_date).each do |date|
			# Check if its a rest day - move to next date
			if(rest_day)
				logger.debug "No Scheduling. Rest day on #{date}"
				rest_day = false
				next
			else				
				
				# get the workout for the day
				workout = workout_map[workout_sequence[i]]
				logger.debug "Scheduling #{workout.workout_type} for #{date}"
				Schedule.create(user_id: user.id, fitness_test_id: self.id,
					workout_id: workout.id, workout_type: workout.workout_type, 
					scheduled_date: date, completion_percentage: 0)			
				
				i = (i == workout_sequence.length - 1) ? 0 : i + 1
				# Ensure the next day is a rest day
				rest_day = true
			end
		end
	end
end
