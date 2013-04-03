require 'spec_helper'

describe SubscribersController do
  before { @subscriber = Subscriber.new(name: "Glend Maatita", email: "glend_maatita@yahoo.com", password: "foobar", password_confirmation: "foobar") }
  
  describe "Post Sign Up" do
  	it "sends a verification email" do
  		post :create, subscriber: @subscriber
  	end
  end
end
