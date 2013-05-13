require 'spec_helper'

describe "Provinsi Page" do

  subject { page }

  describe "add a new record" do
    let(:submit) { "Save" }
    
    before do
      visit new_provinsi_path 
    end

    it "Index page should have right title Tambah Provinsi" do
      should have_selector('title', :text => "Tambah Provinsi")
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
      should have_selector('title', :text => "Provinsi")
    end
  end

  describe "go to update page" do
    let(:save) { "Save" }
    let(:provinsi) { FactoryGirl.create(:provinsi) }
    before { visit edit_provinsi_path(provinsi) }

    it { should have_selector('title', text: "Update Provinsi") }

    # and then update record
    describe "edit and save record" do
      before do
        fill_in "provinsi_provinsi", with: "Jawa Timur"
      end

      it "should update provinsi not added" do
        expect { click_button save }.not_to change(Provinsi, :count)
      end
    end
  end
end



