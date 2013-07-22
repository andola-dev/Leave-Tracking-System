class LeavesController < ApplicationController
  # GET /leaves
  # GET /leaves.json
 # before_filter :authenticate_user!, :except=>[:calendar]
  before_filter :authenticate_user!, :except=>[:calendar, :index]  

  def index
    @leaves = Leave.all
    respond_to do |format|
      format.html # index.html.erb
	   format.xml  { render :xml => @leaves }
      format.json { render json: @leaves}
    end
  end

  # GET /leaves/1
  # GET /leaves/1.json
  def show
    @leave = Leave.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @leave }
    end
  end

  # GET /leaves/new
  # GET /leaves/new.json
  def new
    @leave = Leave.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @leave }
    end
  end

  # GET /leaves/1/edit
  def edit
    @leave = Leave.find(params[:id])
  end

  # POST /leaves
  # POST /leaves.json
  def create
    @leave = Leave.new(params[:leave])
    @leave.from_date = DateTime.strptime("#{params[:leave][:from_date]}", "%m/%d/%Y")
    @leave.to_date = DateTime.strptime("#{params[:leave][:to_date]}", "%m/%d/%Y")

    respond_to do |format|
      if @leave.save
        format.html { redirect_to leaves_path, notice: 'Leave was successfully created.' }
        format.json { render json: @leave, status: :created, location: @leave }
      else
        format.html { render action: "new" }
        format.json { render json: @leave.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /leaves/1
  # PUT /leaves/1.json
  def update
    @leave = Leave.find(params[:id])

    respond_to do |format|
      if @leave.update_attributes(params[:leave])
        format.html { redirect_to leaves_path, notice: 'Leave was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @leave.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leaves/1
  # DELETE /leaves/1.json
  def destroy
    @leave = Leave.find(params[:id])
    @leave.destroy

    respond_to do |format|
      format.html { redirect_to leaves_url, notice: 'Leave was successfully deleted.' }
      format.json { head :no_content }
    end
  end
  
 #--------------------Calendar--------------
def calendar
 @events = Leave.all
    events = [] 
    @events.each do |event|
      events << {:id => event.id, :title => event.user.name, :description => event.reason || "Some cool description here...", :start => "#{event.from_date.iso8601}", :end => "#{event.to_date.iso8601}"}
    end
    #render :text => events.to_json
end 
  
  def get_leave_count_per_user
   puts "-----------------------------"
   actual =  LeaveTypeUser.by_user_and_leave_type(params[:user_id],params[:lvt_id])
   @actual = actual.first.leave_count
   
   taken =  User.get_uniq_leaves_per_user(params[:user_id],params[:lvt_id])
   @taken = !taken.blank? ? taken.first.days : 0
   
   
   #{"user_id"=>"580", "lvt_id"=>"3", "controller"=>"leaves", "action"=>"get_leave_count_per_user"}

   render :text => [@actual,@taken]
  end
end
