namespace :leave do  
	 task :update_days_for_nil => :environment do 
		require 'date'
	 	leaves = Leave.all
	 	leaves.each do |nl|
			d1 = nl.from_date
			d2 = nl.to_date
			days_count = (d2-d1)/(60*60*24)
			puts "---- Total number of days: #{days_count}"
			nl.update_column(:days,days_count + 1)
			puts "-------- Successfully updated days count for user name:#{nl.user.name}"
	 	end
	 end
end