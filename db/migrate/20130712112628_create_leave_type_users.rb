class CreateLeaveTypeUsers < ActiveRecord::Migration
  def change
    create_table :leave_type_users do |t|
      t.integer :user_id
      t.string :leave_type_id
      t.integer :leave_count
      t.timestamps
    end
  end
end
