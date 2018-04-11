class AddFieldsToGoals < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :reason, :text
    add_column :goals, :delight, :text
    add_column :goals, :frequency, :text
    add_column :goals, :current_activity, :text
    remove_column :goals, :goal_name
    remove_column :goals, :goal_desc
  end
end
