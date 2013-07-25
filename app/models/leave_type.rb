class LeaveType < ActiveRecord::Base
  attr_accessible :type_name, :color, :leave_count, :option
  belongs_to :leave_type
  
  has_many :leaves,:class_name=>"Leave", :dependent => :destroy
  has_many :users, :through => :leaves
  
  
  
  
end
