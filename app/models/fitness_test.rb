class FitnessTest < ApplicationRecord
	belongs_to :user
	has_many :workouts
	has_many :schedules
	has_many :cardio_profiles

	has_many :current_workouts, -> (object) { 
           where("workouts.fitness_test_id = ?", object.id)
         },
         :class_name => 'Workout'

	before_create :make_current
	before_save :update_workouts
	after_create :update_user_test_done

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

	# Ensure if the test is done then the user profile is updated
	def update_user_test_done
		self.user.initial_test_completed = true
		self.user.save
	end


	def generate_schedule(start_date, num_weeks=8, day_sequence={2 => "Tempo", 4 => "Interval", 6 => "Long"})
		# Sort the map by keys, sometimes the keys are strings so we convert to int
		day_sequence = day_sequence.sort.to_h.map{|k,v| [k.to_i,v]}.to_h
		# The starting day 1=Mon, 2=Tue .....
		start_day = day_sequence.keys.sort.first - 1
		# we get the start and end dates
		start_date = start_date.beginning_of_week + start_day.day # Start on Tue
		end_date = (start_date + num_weeks.weeks).end_of_week

		# Map the current workouts to the workout_type
		workout_map = {}
		current_workouts.each do |w|
			workout_map[w.workout_type] = w
		end

		# Create the schdules
		week = 1
		scheduled_date = start_date.beginning_of_week
		while(scheduled_date < end_date )
			(1..7).each do |weekday|
				
				workout_type = day_sequence[weekday]
			
				if(workout_type)
					# Every alternate week we need to do a speed run instead of an Interval run
					workout_type = (workout_type == "Interval" && week % 2 == 0) ? "Speed" : workout_type
					# Get the workout
					workout = workout_map[workout_type]
					# Create the schedule
					logger.debug "Scheduling #{workout.workout_type} for #{scheduled_date}"
					Schedule.create(user_id: user.id, fitness_test_id: self.id,
						workout_id: workout.id, workout_type: workout.workout_type, 
						scheduled_date: scheduled_date, completion_percentage: 0)			
				else
					logger.debug "No Scheduled Run. Strength on #{scheduled_date}"
					Schedule.create(user_id: user.id, fitness_test_id: self.id,
						workout_id: nil, workout_type: "Strength", 
						scheduled_date: scheduled_date, completion_percentage: 0)			
				end

				scheduled_date = scheduled_date + 1.day

			end
			week = week + 1
		end
	end
end
