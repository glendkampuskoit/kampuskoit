require 'spec_helper'

describe OmniAuth do

  let (:omniauth) { OmniAuth.config.mock_auth[:facebook] }

  before { @user = User.from_omniauth(omniauth) }

  describe "check session on omniauth" do
    describe "provider must be facebook" do
      specify { omniauth[:provider].should == 'facebook' }
      specify { omniauth[:uid].should == '1055293652' }
      specify { omniauth[:credentials][:token].should == 'adaaja' }
      specify { omniauth[:credentials][:expires_at].should == 3600 }
      specify { omniauth[:info][:email].should == 'the_entung@yahoo.com' }
    end
  end

  describe "user login with facebook" do
    let (:omniauth_other) { OmniAuth.config.mock_auth[:facebook_other] }
    it "will save user data" do
      expect { @user2 = User.from_omniauth(omniauth_other) }.to change(User, :count)
    end
  end

  describe "existing user login with facebook" do
    #before { @user = User.from_omniauth(omniauth) }
    it "will not save user data" do
      expect { @user2 = User.from_omniauth(omniauth) }.not_to change(User, :count)
    end
  end

  describe "other user login with facebook" do
    let (:omniauth_other) { OmniAuth.config.mock_auth[:facebook_other] }
    #before { @user = User.from_omniauth(omniauth) }
    it "will save user data" do
      expect { @user2 = User.from_omniauth(omniauth_other) }.to change(User, :count)
    end
  end

  describe "other user sign up via web with same email" do
    #before { @user = User.from_omniauth(omniauth) }
    it "wont save user data" do
       expect { @user2 = User.new(name: "Glend Maatita", email: "the_entung@yahoo.com", password: "foobar", password_confirmation: "foobar") }.not_to change(User, :count)
    end
  end

  describe "login with facebook will make from_facebook and value is true" do
    #before { @user = User.from_omniauth(omniauth) }
    specify { @user.from_facebook.should == true }
    specify { @user.email_activation.should == true }
  end
end
