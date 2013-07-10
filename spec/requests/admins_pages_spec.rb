require 'spec_helper'

describe "Admins Manager" do
  
  subject { page }
  let(:univ) { FactoryGirl.create(:univ) }

  before { visit admins_path }

  describe "admin login page" do
  	it { should have_selector('title', text: "Administrator List") } 
  end

  describe "add new admin" do
    before do 
      univ
      visit new_admin_path 
    end
    let(:submit) { "Save" }

    describe "with invalid information" do
      it "should not create subscriber" do
        expect { click_button submit }.not_to change(Admin, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "nama", with: "Agung Laksono"
        fill_in "email", with: "agung@yahoo.com"
        select("Admin", :from => "role")
        select(univ.nama_pt, :from => "univ")
        fill_in "password", with: "foobar"
        fill_in "password_confirmation", with: "foobar"
      end

      it "should create a admin" do
        expect { click_button submit }.to change(Admin, :count)
      end
    end
  end

  describe "update admin" do
    let(:submit) { "Save" }
    let(:admin) { FactoryGirl.create(:admin) }
    before do 
      univ
      visit edit_admin_path(admin) 
    end

    describe "with valid information" do
      before do
        fill_in "nama", with: admin.nama
        fill_in "email", with: admin.email
        select("Admin", :from => "role")
        select(univ.nama_pt, :from => "univ")
      end

      it "should create a admin" do
        expect { click_button submit }.not_to change(Admin, :count)
      end
    end
  end
end
