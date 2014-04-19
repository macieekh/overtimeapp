class AddUserIdToOvertime < ActiveRecord::Migration
  def change
    add_column :overtimes, :user_id, :integer
    add_index :overtimes, :user_id
  end
end
