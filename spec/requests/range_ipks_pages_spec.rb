require 'spec_helper'

describe "Range IPK page" do

  subject { page }

  describe "go to index page" do
    before { visit range_ipks_path }

    it "should go to right page with title Range Ipk" do
      should have_selector('title', :text => "Data Range Ipk")
    end
  end
  
  describe "add a new record" do
    let(:submit) { "Save" }

    describe "fill with valid data" do
      before do
        visit new_range_ipk_path 
        fill_in "ipk", with: "2.5 sampai 3"
        fill_in "bobot", with: "2"
      end

      it "should create a range ipk" do
        expect { click_button "Save" }.to change(RangeIpk, :count)
      end
    end

    describe "fill with invalid data" do
      before do
        visit new_range_ipk_path 
        fill_in "ipk", with: ""
        fill_in "bobot", with: "2"
      end

      it "should not create a range ipk" do
        expect { click_button "Save" }.not_to change(RangeIpk, :count)
      end
    end
  end

  describe "go to update page" do
    let(:save) { "Save" }
    let(:range_ipk) { FactoryGirl.create(:range_ipk) }

    # and then update record
    describe "edit and save record" do
      before do
        visit edit_range_ipk_path(range_ipk)
        fill_in "ipk", with: "3 sampai 4"
        fill_in "bobot", with: "3"
      end

      it "should update range not added" do
        expect { click_button save }.not_to change(RangeIpk, :count)
      end
    end
  end

end