class ChangeLeaveTypeIdInLeaveTypeUser < ActiveRecord::Migration
  def up
  	change_column :leave_type_users, :leave_type_id, 'integer USING CAST(leave_type_id AS integer)'
  end

  def down
  	change_column :leave_type_users, :leave_type_id, 'integer USING CAST(leave_type_id AS integer)'
  end
end
