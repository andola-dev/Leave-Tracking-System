class AddIsOptionalToLeaveType < ActiveRecord::Migration
  def change
    add_column :leave_types, :is_optional, :boolean, :default => false
    add_column :leave_types, :description, :string
  end
end
