require 'spec_helper'

describe "Provinsi Page" do

  describe "add a new record" do
    let(:submit) { "Simpan" }
    
    before do
      visit new_provinsi_path 
    end

    it "Index page should have right title Tambah Provinsi" do
      page.should have_selector('title', :text => "Tambah Provinsi")
    end

    describe "fill with valid data" do
      before do
        fill_in "provinsi_provinsi", with: "Jawa Timur"
      end

      it "should create a provinsi" do
        expect { click_button submit }.to change(Provinsi, :count)
      end
    end
  end

  describe "go to index page" do
    before { visit provinsis_path }

    it "should go to right page with title Provinsi" do
      page.should have_selector('title', :text => "Provinsi")
    end
  end
end



