class SubscriberMailer < ActionMailer::Base
  default from: "info@kampus.co.id" #Rails.application.config.email

  # def welcome_email(subscriber)
  # 	@subscriber = subscriber
  # 	# activateion URL : token -> remember token, member -> subscriber id, return url
  # 	# web_url/confirm?token=...&memberid=...
  # 	@activation_url = Rails.application.config.campus_url + "confirm?token=#{subscriber.remember_token}&memberid=#{subscriber.id}"
  # 	@login_url = Rails.application.config.campus_url + "login"
  # 	mail(to: subscriber.email, subject: 'Selamat Datang di Kampus.co.id') do |format|
  #     format.html { render :layout => 'mailer' }
  #     format.text
  #   end
  # end

  # def password_reset(subscriber)

  #   @subscriber = subscriber
  #   mail(to: subscriber.email, subject: 'Password Reset for Kampus.co.id') do |format|
  #     format.html { render :layout => 'mailer' }
  #     format.text
  #   end    
  # end
end
