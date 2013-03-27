class VisitorMailer < ActionMailer::Base
  default from: "info@kampus.co.id"

  def thanks(visitor)
  	@visitor = visitor 
  	mail(to: visitor.email, subject: 'Welcome to Kampus.co.id') do |format|
      format.html { render :layout => 'mailer' }
      format.text
    end
  end
end
