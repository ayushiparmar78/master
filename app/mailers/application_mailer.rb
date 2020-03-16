class ApplicationMailer < ActionMailer::Base
  default from: 'ayushiparmar78@gmail.com'
  
  def notify_email
  	@user = params[:contact_details]
  	mail(to: 'anishparmar10@gmail.com', subject: 'You got a new contact details')
  end
end
