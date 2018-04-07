class AddCurrentToFitnessTest < ActiveRecord::Migration[5.1]
  def change
  	add_column :fitness_tests, :current, :boolean
  	add_index :fitness_tests, :current  
  end
end
