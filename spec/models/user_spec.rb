require 'spec_helper'

describe User do
  # pending "add some examples to (or delete) #{__FILE__}"
  before { @user = User.new(name: "Glend Maatita", email: "glend_maatita@yahoo.com", password: "foobar", password_confirmation: "foobar") }

  subject { @user }

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

  describe "When name is blank" do
  	before { @user.name = " " } 
  	it { should_not be_valid }
  end

  describe "When email is blank" do
  	before { @user.email = " " }
  	it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @user.name = "a" * 51 }
    it { should_not be_valid }
  end

  describe "when email is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo foo@bar_bar.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @user.email = invalid_address
        @user.should_not be_valid
      end
    end
  end

  describe "when email is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @user.email = valid_address
        @user.should be_valid
      end
    end
  end

  describe "when email already exist" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.save
    end
    it { should_not be_valid }
  end

  describe "when password is blank when login with email" do
    before { @user.password = @user.password_confirmation = "" }
    it { should_not be_valid }
  end

  describe "with password too short when login with email" do
    before { @user.password == @user.password_confirmation = "a" * 5 }
    it { should be_invalid }
  end

  describe "when password confirmation not match when login with email" do
    before { @user.password_confirmation = "mismatch" }
    it { should_not be_valid }
  end

  describe "when password confirmation is nil when login with email" do
    before { @user.password_confirmation = nil }
    it { should_not be_valid }
  end

  describe "return value of authenticate method" do
    before { @user.save }
    let (:found_user) { User.find_by_email(@user.email) }

    describe "with valid password" do
      it { should == found_user.authenticate(@user.password) }
    end

    describe "with invalid password" do
      let (:user_for_invalid_password) { found_user.authenticate("invalid") }
      it { should_not == user_for_invalid_password }
      specify { user_for_invalid_password.should be_false }
    end
  end

  describe "remember token" do
    before { @user.save }
    its (:remember_token) { should_not be_blank }
  end

  describe "default value for from_facebook and email_activation is false" do
    before { @user.save }
    specify { @user.from_facebook.should == false }
    specify { @user.email_activation.should == false }
  end

   #- user sign up via email, then login via facebook -> email dicek, if terdaftar, from_facebook -> true, login 
  describe "sign up via email, and then login via facebook" do
    let (:omniauth) { OmniAuth.config.mock_auth[:facebook] }
    before { omniauth[:info][:email] = @user.email }

    specify { @user.from_facebook.should == false }
    specify { @user.email_activation.should == false }

    describe "will make from_facebook & email_activation status changed" do
      before do 
        @user.save
        @user2 = User.from_omniauth(omniauth) # this will change status of from_facebook and email_activation
        @userExist = User.find_by_email(@user.email)
      end

      specify { @userExist.from_facebook.should == true }
      specify { @userExist.email_activation.should == true }
    end   
  end

  describe "sign up via email, and then login via facebook will not save user data" do
    let (:omniauth) { OmniAuth.config.mock_auth[:facebook] }
    before do 
      @user.save
      omniauth[:info][:email] = @user.email 
    end
    it "will not save user data" do
      expect { @user2 = User.from_omniauth(omniauth) }.not_to change(User, :count)
    end
  end
end
