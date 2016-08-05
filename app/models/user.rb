class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable,:lockable#, :registerable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :admin, :color
  attr_accessible :leave_type_users
  
   belongs_to :user_group
   ##########################
   has_many :leaves, :class_name=>"Leave",:dependent => :destroy
   has_many :leave_types, :through => :leaves
   has_many :leave_type_users, :dependent => :destroy

   ##########################
   validates :name, :presence => { :message => "can't be blank!" }, :on => :create
   validates :email, :presence => { :message => "can't be blank!" }
   validates :email,:format => { :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/,:message => "format is invalid!" },:allow_blank => true
   validates :color, :uniqueness => true  ##Unique leaves and total sum of all leaves per user
  def self.get_uniq_leaves_per_user(usr_id,lv_id)    
    #leaves = Leave.find_by_sql("SELECT user_id,leave_type_id, sum(days) as days from leaves where user_id = #{usr_id} group by leave_type_id, user_id") 
    leaves = Leave.find_by_sql("SELECT user_id,leave_type_id, sum(days) as days from leaves where user_id = #{usr_id} and leave_type_id = #{lv_id} group by leave_type_id, user_id")      
  end
  
  def generate_confirmation_token
     self.confirmation_token = self.class.confirmation_token
     self.confirmation_sent_at = Time.now.utc
  end


end
