class AddPostSignupFlagsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :goals_setup, :boolean
    add_column :users, :initial_test_completed, :boolean
  end
end
