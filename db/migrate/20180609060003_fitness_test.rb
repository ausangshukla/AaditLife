class FitnessTest < ActiveRecord::Migration[5.1]
  def change
  	add_column :fitness_tests, :wellness_index, :integer
  end
end
