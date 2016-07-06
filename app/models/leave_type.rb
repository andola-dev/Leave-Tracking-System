class LeaveType < ActiveRecord::Base
  attr_accessible :color, :leave_count, :option,:is_optional, :description, :type_name
  #belongs_to :leave_type
  has_many :leave_type_users
  
  has_many :leaves,:class_name=>"Leave", :dependent => :destroy
  has_many :users, :through => :leaves
  validates :color, :uniqueness => true, :scope => :user_id
end
