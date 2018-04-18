class ScheduleGeneratorJob < ApplicationJob
  queue_as :default

  def perform(fitness_test_id, weeks, day_sequence)
    fitness_test = FitnessTest.find(fitness_test_id)
    fitness_test.generate_schedule(Date.today, weeks, day_sequence)
  end
end
