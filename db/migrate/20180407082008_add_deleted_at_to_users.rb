class AddDeletedAtToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :deleted_at, :datetime
    add_column :companies, :deleted_at, :datetime
    add_index :users, :deleted_at
    add_index :companies, :deleted_at
  end
end
