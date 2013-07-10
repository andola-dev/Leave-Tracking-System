class UsersController < ApplicationController
  before_filter :assign_user
  def assign_user
     @user = current_user
  end

  def save_password
    if @user.update_attributes(params[:user])
       sign_in(@user, :bypass => true)
        flash[:notice] = "Password changed successfully."
	redirect_to  '/change_password'
    else
      respond_to do |format|
        format.html { render :action => "change_password" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def search   
    str = "%#{params[:q]}%"; 
	comp_data = ""
    persons = User.find(:all, :conditions => ["name LIKE ? AND admin = ? AND locked_at is null",str, 0])
     comp_data1 = ""
    persons.each do|comp_res1|
      comp_data += "#{comp_res1.name}|#{comp_res1.id}\n";
    end
    if comp_data != ""
       render :text=> comp_data 
     else
      render :text=> "<a>Create a new user</a>|n_per|"
    end  
  end
  
  
  
end
