require 'spec_helper'

describe "Admin Profile Page" do

  describe "update profile" do
    let(:submit) { "Update" }
    let(:admin) { FactoryGirl.create(:admin)}
    
    before do
      visit edit_admin_profile_path(admin)
    end

    it "Index page should have right title Update Profile" do
      page.should have_selector('title', :text => "Update Profile")
    end

    pending "fill with valid data" do
      before do
        fill_in "kota_kota", with: "Surabaya"
        select(provinsi.provinsi, :from => "kota_provinsi_id")
      end

      it "should create a kota" do
        expect { click_button submit }.to change(Kota, :count)
      end
    end
  end
end