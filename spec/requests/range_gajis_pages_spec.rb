require 'spec_helper'

describe "Range_gaji page" do

  subject { page }

  describe "go to index page" do
    before { visit range_gajis_path }

    it "should go to right page with title Range Gaji" do
      should have_selector('title', :text => "Data Range Gaji")
    end
  end
  
  describe "add a new record" do
    let(:submit) { "Save" }

    describe "fill with valid data" do
      before do
        visit new_range_gaji_path 
        fill_in "range", with: "1 juta sampai 3 juta"
        fill_in "bobot", with: "1"
      end

      it "should create a range gaji" do
        expect { click_button "Save" }.to change(RangeGaji, :count)
      end
    end

    describe "fill with invalid data" do
      before do
        visit new_range_gaji_path 
        fill_in "range", with: ""
        fill_in "bobot", with: "1"
      end

      it "should not create a range gaji" do
        expect { click_button "Save" }.not_to change(RangeGaji, :count)
      end
    end
  end

  describe "go to update page" do
    let(:save) { "Save" }
    let(:range_gaji) { FactoryGirl.create(:range_gaji) }

    # and then update record
    describe "edit and save record" do
      before do
        visit edit_range_gaji_path(range_gaji)
        fill_in "range", with: "3 juta sampai 5 juta"
        fill_in "bobot", with: "4"
      end

      it "should update range not added" do
        expect { click_button save }.not_to change(RangeGaji, :count)
      end
    end
  end
end