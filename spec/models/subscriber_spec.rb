require 'spec_helper'

describe Subscriber do
  # pending "add some examples to (or delete) #{__FILE__}"
  before { @subscriber = Subscriber.new(name: "Glend Maatita", email: "entung@yahoo.com", password: "foobar", password_confirmation: "foobar") }

  subject { @subscriber }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:remember_token) }

  it { should respond_to(:authenticate) }

  it { should respond_to(:from_facebook) }
  it { should respond_to(:email_activation) }

  it { should be_valid }

  # test for assosiation
  it { should have_many(:subscriber_beasiswas).dependent(:delete_all) }
  it { should have_many(:subscriber_organisasis).dependent(:delete_all) }
  it { should have_many(:subscriber_pendidikans).dependent(:delete_all) }
  it { should have_many(:subscriber_pengalaman_kerjas).dependent(:delete_all) }
  it { should have_many(:subscriber_pelatihans).dependent(:delete_all) }
  it { should have_many(:subscriber_prestasis).dependent(:delete_all) }
  it { should have_many(:subscriber_rekomendasis).dependent(:delete_all) }
  it { should belong_to(:provinsis) }
  it { should belong_to(:kotas) }

  describe "When name is blank" do
    before { @subscriber.name = " " } 
    it { should_not be_valid }
  end

  describe "When email is blank" do
    before { @subscriber.email = " " }
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

  describe "when password is blank when login with email" do
    before { @subscriber.password = @subscriber.password_confirmation = "" }
    it { should_not be_valid }
  end

  describe "with password too short when login with email" do
    before { @subscriber.password == @subscriber.password_confirmation = "a" * 5 }
    it { should be_invalid }
  end

  describe "when password confirmation not match when login with email" do
    before { @subscriber.password_confirmation = "mismatch" }
    it { should_not be_valid }
  end

  describe "when password confirmation is nil when login with email" do
    before { @subscriber.password_confirmation = nil }
    it { should_not be_valid }
  end

  describe "return value of authenticate method" do
    before { @subscriber.save }
    let (:found_subscriber) { Subscriber.find_by_email(@subscriber.email) }

    describe "with valid password" do
      it { should == found_subscriber.authenticate(@subscriber.password) }
    end

    describe "with invalid password" do
      let (:subscriber_for_invalid_password) { found_subscriber.authenticate("invalid") }
      it { should_not == subscriber_for_invalid_password }
      specify { subscriber_for_invalid_password.should be_false }
    end
  end

  describe "remember token" do
    before { @subscriber.save }
    its (:remember_token) { should_not be_blank }
  end

  describe "default value for from_facebook and email_activation is false" do
    before { @subscriber.save }
    specify { @subscriber.from_facebook.should == false }
    specify { @subscriber.email_activation.should == false }
  end

   #- subscriber sign up via email, then login via facebook -> email dicek, if terdaftar, from_facebook -> true, login 
  describe "sign up via email, and then login via facebook" do
    let (:omniauth) { OmniAuth.config.mock_auth[:facebook] }
    before { omniauth[:info][:email] = @subscriber.email }

    specify { @subscriber.from_facebook.should == false }
    specify { @subscriber.email_activation.should == false }

    describe "will make from_facebook & email_activation status changed" do
      before do 
        @subscriber.save
        @subscriber2 = Subscriber.from_omniauth(omniauth) # this will change status of from_facebook and email_activation
        @subscriberExist = Subscriber.find_by_email(@subscriber.email)
      end

      specify { @subscriberExist.from_facebook.should == true }
      specify { @subscriberExist.email_activation.should == true }
    end
  end

  describe "sign up via email, and then login via facebook will not save user data" do
    let (:omniauth) { OmniAuth.config.mock_auth[:facebook] }
    before do 
      @subscriber.save
      omniauth[:info][:email] = @subscriber.email 
    end
    it "will not save subscriber data" do
      expect { @subscriber2 = Subscriber.from_omniauth(omniauth) }.not_to change(Subscriber, :count)
    end
  end
end
