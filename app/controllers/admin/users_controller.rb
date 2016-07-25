class Admin::UsersController < ApplicationController
  before_filter :authenticate_admin
  before_filter :get_user, :only =>[:block_user, :unblock_user]
  
  def index
    @users = User.where("admin =?", false).order("created_at DESC")
  end 
 
  def new
    @user = User.new
  end
  
  def create
    @lvtype = []
    @user = User.new(params[:user])
    @user.password = Devise.friendly_token[0,20]
    respond_to do |format|
      if @user.save
       @lvtype = params[:leave_type_users]
       @lvtype.each_with_index do |lv,i|
         LeaveTypeUser.create(:user_id=>@user.id,:leave_type_id=>lv[0],:leave_count=>lv[1]["leave_count"])
        end
        format.html { redirect_to admin_users_path, :notice => "User '#{@user.name}' was successfully created." }
        format.json { render :json => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  
  def block_user
    @user.lock_access! if @user
    redirect_to admin_users_path
  end
  
  def unblock_user
    @user.unlock_access! if @user
    redirect_to admin_users_path
  end
  
  def destroy
    @user = User.find(params[:id])
    ##Adding back all the quantities after user deletion
    # @user.inventory_users.each do |u_i|
	  # @s = Inventory.find u_i.inventory_id	
	  # @qt_val = @s.qty.to_i + u_i.qty.to_i
	  # @s.update_column(:qty,@qt_val)
     # end	  
     @user.destroy
     respond_to do |format|
        format.html { redirect_to admin_users_path, :notice => "User '#{@user.name}' was successfully deleted." }
        format.json { head :no_content }
     end
  end
  
  def show
    #user=User.find params[:id]
    #@inventory_users=user.inventory_users
    @user=User.find params[:id]
    # @leaves = User.get_uniq_leaves_per_user(@user.id)
  end
  
   def edit
    @user=User.find params[:id]
   end

   def update
     @user = User.find(params[:id])
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to admin_users_path, notice: "User '#{@user.name}' was successfully updated." }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
   end
  def show_history
    @user = User.find(params[:id])
    render :partial => "show_history_button"
  end
  
  private
    def authenticate_admin
      if !current_user.admin?
        sign_out current_user 
        flash[:notice] = "Please logged in as admin to continue."
        redirect_to new_user_session_path
      end
    end  
    
    def get_user
      @user = User.find_by_id params[:user_id]
    end
end
