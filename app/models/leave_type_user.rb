class LeaveTypeUser < ActiveRecord::Base
  attr_accessible :color, :leave_count, :option, :user_id, :leave_type_id
  #has_many :users
  
  belongs_to :user
  has_many :leave_types
  
  scope :by_user_and_leave_type, lambda{|usr,lvt| where("user_id = ? and leave_type_id = ?", usr,lvt).limit(1)}
  
  
  
  
end
