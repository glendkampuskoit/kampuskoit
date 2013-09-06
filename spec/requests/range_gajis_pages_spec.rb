require 'spec_helper'

describe "Range_gaji page" do

  subject { page }
  
  describe "add a new record" do
    let(:submit) { "Save" }
    
    before do
      visit new_range_gaji_path 
    end

    it "Index page should have right title Tambah Range Gaji" do
      should have_selector('title', :text => "Tambah Range Gaji")
    end

    describe "fill with valid data" do
      before do
        fill_in "range", with: "1 juta sampai 3 juta"
      end

      it "should create a range gaji" do
        expect { click_button "Save" }.to change(RangeGaji, :count)
      end
    end
  end

  describe "go to index page" do
    before { visit range_gajis_path }

    it "should go to right page with title Range Gaji" do
      should have_selector('title', :text => "Data Range Gaji")
    end
  end

  describe "go to update page" do
    let(:save) { "Save" }
    let(:rangegaji) { FactoryGirl.create(:range_gaji) }
    before { visit edit_range_gaji_path(rangegaji) }

    it { should have_selector('title', text: "Update Range Gaji") }

    # and then update record
    describe "edit and save record" do
      before do
        fill_in "range", with: "3 juta sampai 5 juta"
      end

      it "should update provinsi not added" do
        expect { click_button save }.not_to change(RangeGaji, :count)
      end
    end
  end

end