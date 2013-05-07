require 'spec_helper'

describe "AdminLogin" do
  
  subject { page }

  before { visit admin_login_path }

  describe "admin login page" do
  	it { should have_selector('title', text: "Administrator Login") } 
  end

  describe "login with valid information" do
    let(:admin) { FactoryGirl.create(:admin) }

    before do
      fill_in "admin_session_email", with: admin.email
      fill_in "admin_session_password", with: admin.password
      click_button "Login"
    end

    it { should have_selector('title', text: "Dashboard") } 
  end

  describe "login with ivalid information" do
    let(:admin) { FactoryGirl.create(:admin) }

    before do
      fill_in "admin_session_email", with: admin.email
      fill_in "admin_session_password", with: "ngawur"
      click_button "Login"
    end

    it { should have_selector('title', text: "Login") } 
  end
end
