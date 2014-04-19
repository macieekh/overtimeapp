class AddApprovalStatusToOvertime < ActiveRecord::Migration
  def change
    add_column :overtimes, :approval_status, :integer
  end
end
