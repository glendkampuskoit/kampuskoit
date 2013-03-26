class SubscriberMailer < ActionMailer::Base
  default from: "redaksi@kampus.co.id"

  def thanks(subscriber)
  	@subscriber = subscriber 
  	mail(to: subscriber.email, subject: 'Welcome to Kampus.com') do |format|
      format.html { render :layout => 'mailer' }
      format.text
    end
  end
end
