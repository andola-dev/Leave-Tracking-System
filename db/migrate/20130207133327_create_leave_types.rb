class CreateLeaveTypes < ActiveRecord::Migration
  def change
    create_table :leave_types do |t|
      t.string :type
      t.string :color
      t.integer :leave_count
	  t.boolean :option 	
      t.timestamps
    end
  end
end
