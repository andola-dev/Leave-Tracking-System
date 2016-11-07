class Notification < ActionMailer::Base
  default :from => 'LTS <test@andolasoft.com>'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification.reminder.subject
  #
  def leave_reminder(leaves, start_date, end_date)
    @leaves = leaves   
    mail(to: 'amit.mohanty@andolasoft.co.in', subject: "Upcoming Leave | #{start_date.strftime('%a, %d %b')} - #{end_date.strftime('%a, %d %b')}")
  end

  
end
