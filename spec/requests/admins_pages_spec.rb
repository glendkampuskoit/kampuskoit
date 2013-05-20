require 'spec_helper'

describe "Admins Manager" do
  
  subject { page }

  before { visit admins_path }

  describe "admin login page" do
  	it { should have_selector('title', text: "Administrator List") } 
  end

  describe "add new admin" do
    before { visit new_admin_path }
    let(:submit) { "Save" }

    describe "with invalid information" do
      it "should not create subscriber" do
        expect { click_button submit }.not_to change(Admin, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "admin_nama", with: "Agung Laksono"
        fill_in "admin_email", with: "agung@yahoo.com"
        select("Admin", :from => "admin_role")
        fill_in "admin_password", with: "foobar"
        fill_in "admin_password_confirmation", with: "foobar"
      end

      it "should create a admin" do
        expect { click_button submit }.to change(Admin, :count)
      end
    end
  end

  describe "update admin" do
    let(:submit) { "Save" }
    let(:admin) { FactoryGirl.create(:admin) }
    before { visit edit_admin_path(admin) }    

    describe "with valid information" do
      before do
        fill_in "admin_nama", with: admin.nama
        fill_in "admin_email", with: admin.email
        select("Admin", :from => "admin_role")
      end

      it "should create a admin" do
        expect { click_button submit }.not_to change(Admin, :count)
      end
    end
  end
end
