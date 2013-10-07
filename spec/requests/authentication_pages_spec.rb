require 'spec_helper'

describe "Authentication" do
  
  subject { page }

  pending "login page" do
  	before { visit login_path }
  	it { should have_selector('title', text: "Login") } 
  end

  pending "login" do
  	before { visit login_path }
  	
  	describe "with invalid information" do
  		before { click_button "Login" }

  		it { should have_selector('title', text: "Login") } 
  	end

  	describe "with valid information" do
  		let(:subscriber) { FactoryGirl.create(:subscriber) }
  		before do
  			fill_in "session_email", with: subscriber.email
  			fill_in "session_password", with: subscriber.password
  			click_button "Login"
  		end

  		it { should_not have_selector('title', text: "Login") } 

      pending "click button logout" do
        before { click_link 'Logout' }
        it { should have_link ('Login') }
      end
  	end
  end

  pending "login in homepage" do
    before { visit root_path }
    
    describe "with invalid information" do
      before { click_button "Login" }

      it { should have_selector('title', text: "Login") } 
    end

    describe "with valid information" do
      let(:subscriber) { FactoryGirl.create(:subscriber) }
      before do
        fill_in "session_email", with: subscriber.email
        fill_in "session_password", with: subscriber.password
        click_button "Login"
      end
      # login failed will redirect to login page
      it { should_not have_selector('title', text: "Login") } 
    end
  end

  # #subscriber sign up via facebook, login via email -> tidak bisa with wrong password
  # describe "subscriber login again via email should not be valid" do
  #   let (:omniauth) { OmniAuth.config.mock_auth[:facebook] }
  #   before { @subscriber = Subscriber.from_omniauth(omniauth) }

  #   before do
  #     visit login_path
  #     fill_in "session_email", with: @subscriber.email
  #     fill_in "session_password", with: 'password'
  #     click_button "Login"
  #   end
  #   it { should have_selector('title', text: "Login") } 
  # end

  # #subscriber sign up via facebook, login via email -> bisa with right password
  # describe "subscriber login again via email should not be valid" do
  #   let (:omniauth) { OmniAuth.config.mock_auth[:facebook] }
  #   before { @subscriber = Subscriber.from_omniauth(omniauth) }

  #   before do
  #     visit login_path
  #     fill_in "session_email", with: @subscriber.email
  #     fill_in "session_password", with: 'defaultpasswordmustbechanged12345465476573453534'
  #     click_button "Login"
  #   end
  #   it { should_not have_selector('title', text: "Login") } 
  # end
end
