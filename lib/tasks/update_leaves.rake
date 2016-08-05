namespace :leave do  
	 task :update_days_for_nil => :environment do 
		require 'date'
	 	leaves = Leave.where(days: nil)
	 	leaves.each do |nl|
			d1 = nl.from_date
			d2 = nl.to_date
			days_count = (d2-d1)/(60*60*24)
			p "----"
			p days_count
			nl.update_column(:days,days_count)
			p days_count
	 	end
	 end
end