require 'spec_helper'

describe "Kota Page" do

  describe "add a new record" do
    let(:submit) { "Save" }
    let(:provinsi) { FactoryGirl.create(:provinsi) }
    
    before do
      provinsi
      visit new_kota_path 
    end

    it "Index page should have right title Tambah Kota" do
      page.should have_selector('title', :text => "Tambah Kota")
    end

    describe "fill with valid data" do
      before do
        fill_in "kota_kota", with: "Surabaya"
        select(provinsi.provinsi, :from => "kota_provinsi_id")
      end

      it "should create a kota" do
        expect { click_button submit }.to change(Kota, :count)
      end
    end
  end

  describe "go to index page" do
    before { visit kotas_path }

    it "should go to right page with title Kota" do
      page.should have_selector('title', :text => "Kota")
    end
  end

  describe "go to update page" do
    let(:save) { "Save" }
    let(:kota) { FactoryGirl.create(:kota) }
    before { visit edit_kota_path(kota) }

    # update record
    describe "update record" do
      before do
        fill_in "kota_kota", with: "Surabaya"
        select(kota.provinsi.provinsi, :from => "kota_provinsi_id")
      end
      it "should create a kota" do
        expect { click_button save }.not_to change(Kota, :count)
      end
    end
  end
end