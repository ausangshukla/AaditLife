class IncreaseHeightColSizeToUser < ActiveRecord::Migration[5.1]
  def change
	change_column :users, :height, :string, :limit => 20
  end
end
