require 'spec_helper'

describe OmniAuth do

  let (:omniauth) { OmniAuth.config.mock_auth[:facebook] }

  before { @subscriber = Subscriber.from_omniauth(omniauth) }

  describe "check session on omniauth" do
    describe "provider must be facebook" do
      specify { omniauth[:provider].should == 'facebook' }
      specify { omniauth[:uid].should == '1055293652' }
      specify { omniauth[:credentials][:token].should == 'adaaja' }
      specify { omniauth[:credentials][:expires_at].should == 3600 }
      specify { omniauth[:info][:email].should == 'the_entung@yahoo.com' }
    end
  end

  describe "subscriber login with facebook" do
    let (:omniauth_other) { OmniAuth.config.mock_auth[:facebook_other] }
    it "will save subscriber data" do
      expect { @subscriber2 = Subscriber.from_omniauth(omniauth_other) }.to change(Subscriber, :count)
    end
  end

  describe "existing subscriber login with facebook" do
    it "will not save subscriber data" do
      expect { @subscriber2 = Subscriber.from_omniauth(omniauth) }.not_to change(Subscriber, :count)
    end
  end

  describe "other subscriber login with facebook" do
    let (:omniauth_other) { OmniAuth.config.mock_auth[:facebook_other] }
    it "will save subscriber data" do
      expect { @subscriber2 = Subscriber.from_omniauth(omniauth_other) }.to change(Subscriber, :count)
    end
  end

  # describe "other subscriber sign up via web with same email" do
  #   it "wont save subscriber data" do
  #     #expect { @subscriber2 = Subscriber.new(name: "Glend Maatita", email: "the_entung@yahoo.com", password: "foobar", password_confirmation: "foobar") }.not_to change(Subscriber, :count)
  #     expect { @subscriber2 = Subscriber.new(name: "Glend Maatita", email: "the_entung@yahoo.com", password: "foobar", password_confirmation: "foobar") }.not_to change(Subscriber, :count)
  #   end
  # end

  # describe "login with facebook will make from_facebook and value is true" do
  #   specify { @subscriber.from_facebook.should == true }
  #   specify { @subscriber.email_activation.should == true }
  # end
end
