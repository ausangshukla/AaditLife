class DeviseTokenAuthCreateUsers < ActiveRecord::Migration[5.1]
  def change
      ## Required
      add_column :users, :tokens, :text

  end
end
