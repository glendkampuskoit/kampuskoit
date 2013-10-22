require 'spec_helper'

describe Subscriber do
  before { @subscriber = Subscriber.new(name: "Glend Maatita", email: "entung@yahoo.com") } #, password: "foobar", password_confirmation: "foobar") }

  subject { @subscriber }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:remember_token) }

  it { should be_valid }

  # test for assosiation
  it { should belong_to(:provinsi) }
  it { should belong_to(:kota) }

  describe "When name is blank" do
    before { @subscriber.name = "" } 
    it { should_not be_valid }
  end

  describe "When email is blank" do
    before { @subscriber.email = "" }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @subscriber.name = "a" * 51 }
    it { should_not be_valid }
  end

  describe "when email is invalid" do
    it "should be invalid" do
      addresses = %w[subscriber@foo,com subscriber_at_foo.org example.subscriber@foo foo@bar_bar.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @subscriber.email = invalid_address
        @subscriber.should_not be_valid
      end
    end
  end

  describe "when email is valid" do
    it "should be valid" do
      addresses = %w[subscriber@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
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