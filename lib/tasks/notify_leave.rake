namespace :leave do  
	 task :notify_leave_next_week => :environment do 
	 	include ApplicationHelper
		require 'date'
	 	today = Date.today
	    leaves_arr = []
	    start_date = date_of_next("Monday")
	    end_date = date_of_next("Friday")
	    leaves = Leave.where("from_date BETWEEN ? AND ? OR to_date BETWEEN ? AND ?", start_date, end_date,start_date, end_date)
	    # p leaves
	    Notification.leave_reminder(leaves, start_date, end_date).deliver if leaves.present?
	 end
end