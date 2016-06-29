class Leave < ActiveRecord::Base
  attr_accessible :days, :from_date, :reason, :to_date, :leave_type_id, :user_id
  #has_one :leave_type
  #############################
  belongs_to :user
  belongs_to :leave_type
  ##############################

  def as_json(options = {})
    {
      :id => self.id,
      :title => self.user.name,
      :description => self.reason || "",
      :start => from_date.rfc822,
      :end => to_date.rfc822,
	    :color => "#"+SecureRandom.hex(3),
	    :tip => "Type:" + self.leave_type.type_name + " Resson:" +  self.reason || ""
      
    }
    
  end
  
  # Calculation for remaining balance for leave
  def self.calculate_leave_remaining actual_leave_count, leave_taken_days
    return actual_leave_count.to_i - leave_taken_days.to_i
  end

 ## validates :from_date, :presence => true
  ##validates :to_date, :presence => true
 ## validates :days, :presence => true
end
