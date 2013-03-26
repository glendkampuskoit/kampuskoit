require 'spec_helper'

describe "Authentication" do
  
  subject { page }

  describe "login page" do
  	before { visit login_path }
  	it { should have_selector('title', text: "Login") } 
  end

  describe "login" do
  	before { visit login_path }
  	
  	describe "with invalid information" do
  		before { click_button "Login" }

  		it { should have_selector('title', text: "Login") } 
  	end

  	describe "with valid information" do
  		let(:user) { FactoryGirl.create(:user) }
  		before do
  			fill_in "Email", with: user.email
  			fill_in "Password", with: user.password
  			click_button "Login"
  		end

  		it { should_not have_selector('title', text: "Login") } 

      describe "click button logout" do
        before { click_link 'Logout' }
        it { should have_link ('Login') }
      end
  	end
  end

  #user sign up via facebook, login via email -> tidak bisa with wrong password
  describe "user login again via email should not be valid" do
    let (:omniauth) { OmniAuth.config.mock_auth[:facebook] }
    before { @user = User.from_omniauth(omniauth) }

    before do
      visit login_path
      fill_in "Email", with: @user.email
      fill_in "Password", with: 'password'
      click_button "Login"
    end
    it { should have_selector('title', text: "Login") } 
  end

  #user sign up via facebook, login via email -> bisa with right password
  describe "user login again via email should not be valid" do
    let (:omniauth) { OmniAuth.config.mock_auth[:facebook] }
    before { @user = User.from_omniauth(omniauth) }

    before do
      visit login_path
      fill_in "Email", with: @user.email
      fill_in "Password", with: 'defaultpasswordmustbechanged12345465476573453534'
      click_button "Login"
    end
    it { should_not have_selector('title', text: "Login") } 
  end
end
