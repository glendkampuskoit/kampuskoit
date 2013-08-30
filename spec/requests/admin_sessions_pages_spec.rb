require 'spec_helper'

describe "AdminLogin" do
  
  subject { page }

  before { visit new_admin_session_path }

  describe "admin login page" do
  	it { should have_selector('title', text: "Login In - Kampus.co.id Admin Panel") } 
  end

  describe "login with valid information" do
    let(:admin) { FactoryGirl.create(:admin) }

    before do
      fill_in "admin_session_email", with: admin.email
      fill_in "admin_session_password", with: admin.password
      click_button "Login"
    end

    it { should have_selector('title', text: "Dashboard") } 
    it { should have_link('Logout') } 

    # and then logout
    describe "admin logout" do
      before { click_link "Logout" }
      it { should have_selector('title', text: "Login") } 
    end
  end

  describe "login with ivalid information" do
    let(:admin) { FactoryGirl.create(:admin) }

    before do
      fill_in "admin_session_email", with: admin.email
      fill_in "admin_session_password", with: "ngawur"
      click_button "Login"
    end

    it { should have_selector('title', text: "Login") } 
    it { should_not have_selector('title', text: "Dashboard") } 
  end
end
