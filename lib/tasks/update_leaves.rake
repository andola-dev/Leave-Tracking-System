namespace :leave do  
	 task :update_days_for_nil => :environment do 
		require 'date'
	 	leaves = Leave.where(days: nil)
	 	leaves.each do |nl|
			d1 = nl.from_date
			d2 = nl.to_date
			days_count = (d2-d1)/(60*60*24)
			puts "---- Total number of days: #{days_count}"
			nl.update_column(:days,days_count)
			puts "-------- Successfully updated days count for user name:#{leave.user.name}"
	 	end
	 end
end