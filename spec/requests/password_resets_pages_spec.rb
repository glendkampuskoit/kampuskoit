require 'spec_helper'

describe "Reset Password Page" do

  describe "propose reset password" do
    before { visit new_password_reset_path }

    it "Index page should have right title Reset Password" do
      page.should have_selector('title', :text => "Reset Password")
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