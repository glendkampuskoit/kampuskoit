require 'spec_helper'

describe Visitor do
  
  before { @subscriber = Subscriber.new(email: "glend_maatita@yahoo.com")}
  subject { @subscriber }

  it { should respond_to(:email) }

  describe "When email is blank" do
  	before { @subscriber.email = "" }
  	it { should_not be_valid }
  end

  describe "when email is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo foo@bar_bar.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @subscriber.email = invalid_address
        @subscriber.should_not be_valid
      end
    end
  end

  describe "when email is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @subscriber.email = valid_address
        @subscriber.should be_valid
      end
    end
  end

  describe "when email already exist" do
    before do
      subscriber_with_same_email = @subscriber.dup
      subscriber_with_same_email.save
    end
    it { should_not be_valid }
  end
end
