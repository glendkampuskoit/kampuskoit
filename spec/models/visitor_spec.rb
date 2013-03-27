require 'spec_helper'

describe Visitor do
  
  before { @visitor = Visitor.new(email: "glend_maatita@yahoo.com")}
  subject { @visitor }

  it { should respond_to(:email) }

  describe "When email is blank" do
  	before { @visitor.email = "" }
  	it { should_not be_valid }
  end

  describe "when email is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo foo@bar_bar.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @visitor.email = invalid_address
        @visitor.should_not be_valid
      end
    end
  end

  describe "when email is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @visitor.email = valid_address
        @visitor.should be_valid
      end
    end
  end

  describe "when email already exist" do
    before do
      subscriber_with_same_email = @visitor.dup
      subscriber_with_same_email.save
    end
    it { should_not be_valid }
  end
end
