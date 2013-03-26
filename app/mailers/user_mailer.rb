class UserMailer < ActionMailer::Base
  default from: "redaksi@kampus.co.id"

  def welcome_email(user)
  	@user = user
  	# activateion URL : token -> remember token, member -> user id, return url
  	# web_url/confirm?token=...&memberid=...
  	@activation_url = Rails.application.config.campus_url + "confirm?token=#{user.remember_token}&memberid=#{user.id}"
  	@login_url = Rails.application.config.campus_url + "login"
  	mail(to: user.email, subject: 'Welcome to Kampus.com') do |format|
      format.html { render :layout => 'mailer' }
      format.text
    end
  end
end
