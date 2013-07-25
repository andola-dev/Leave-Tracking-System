namespace :lts do
  task :insert_admin_to_user => :environment do 
	  email = ''
	  STDOUT.puts "Enter emailid:"
	  email = STDIN.gets.chomp
	  if email.match(/^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$/)	
	    STDOUT.puts "Enter password:"
	    password = STDIN.gets.chomp
	  else
	    STDOUT.puts "Please enter a valid emailid:"
	    email = STDIN.gets.chomp
	  end
	  puts "Plz wait....."	
	  if User.create(:name=>"Admin", :email => email,:password => password,:admin=>1)
	  puts "--  Successfully created an account for admin ----"
	  end
  end
end
  
  
  
  
