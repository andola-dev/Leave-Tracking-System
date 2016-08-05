class ChangeDaysFormatInLeave < ActiveRecord::Migration
  def change
  	change_column :leaves, :days, :decimal, :precision => 6, :scale => 1
  end
end
