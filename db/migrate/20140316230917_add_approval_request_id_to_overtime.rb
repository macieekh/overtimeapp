class AddApprovalRequestIdToOvertime < ActiveRecord::Migration
  def change
    add_column :overtimes, :approval_request_id, :integer
    add_index :overtimes, :approval_request_id
  end
end
