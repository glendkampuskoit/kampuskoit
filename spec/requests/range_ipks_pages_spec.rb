require 'spec_helper'

describe "Range IPK page" do

  subject { page }
  
  describe "add a new record" do
    let(:submit) { "Save" }
    
    before do
      visit new_range_ipk_path 
    end

    it "Index page should have right title Tambah Range Ipk" do
      should have_selector('title', :text => "Tambah Range Ipk")
    end

    describe "fill with valid data" do
      before do
        fill_in "ipk", with: "2.5 sampai 3"
      end

      it "should create a range ipk" do
        expect { click_button "Save" }.to change(RangeIpk, :count)
      end
    end
  end

  describe "go to index page" do
    before { visit range_ipks_path }

    it "should go to right page with title Range Ipk" do
      should have_selector('title', :text => "Data Range Ipk")
    end
  end

  describe "go to update page" do
    let(:save) { "Save" }
    let(:rangeipk) { FactoryGirl.create(:range_ipk) }
    before { visit edit_range_ipk_path(rangeipk) }

    it { should have_selector('title', text: "Update Range Ipk") }

    # and then update record
    describe "edit and save record" do
      before do
        fill_in "ipk", with: "3 sampai 4"
      end

      it "should update range not added" do
        expect { click_button save }.not_to change(RangeIpk, :count)
      end
    end
  end

end