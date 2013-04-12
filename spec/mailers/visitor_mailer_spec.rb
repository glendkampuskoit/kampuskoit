require "spec_helper"

describe VisitorMailer do
	before { @visitor = Visitor.new(email: "glend_maatita@yahoo.com") }

  	describe "Send Email when visitor enter their with email" do
  		let(:sign_up_mailer) { VisitorMailer.thanks(@visitor) }

  		it { sign_up_mailer.from.should == [Rails.application.config.email]  }
  		it { sign_up_mailer.to.should == [@visitor.email]  }
  	end
end
