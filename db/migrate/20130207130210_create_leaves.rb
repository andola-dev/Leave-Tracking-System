class CreateLeaves < ActiveRecord::Migration
  def change
    create_table :leaves do |t|
      t.integer :leave_type_id
      t.integer :user_id
      t.datetime :from_date
      t.datetime :to_date
      t.integer :days      
      t.text :reason

      t.timestamps
    end
  end
end
