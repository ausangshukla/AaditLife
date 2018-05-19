class DropHeightFromUser < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :height
  	add_column :fitness_tests, :height, :float
  end
end
