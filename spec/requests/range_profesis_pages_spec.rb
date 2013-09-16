require 'spec_helper'

describe "Range Profesi page" do

  subject { page }

  describe "go to index page" do
    before { visit range_profesis_path }

    it "should go to right page with title Range Profesi" do
      should have_selector('title', :text => "Data Range Profesi")
    end
  end
  
  describe "add a new record" do
    let(:submit) { "Save" }
    
    describe "fill with valid data" do
      before do
        visit new_range_profesi_path
        fill_in "profesi", with: "Keguruan"
        fill_in "bobot", with: "5"
      end

      it "should create a range Profesi" do
        expect { click_button "Save" }.to change(RangeProfesi, :count)
      end
    end

    describe "fill with ivalid data" do
      before do
        visit new_range_profesi_path
        fill_in "profesi", with: "Keguruan"
        fill_in "bobot", with: ""
      end

      it "should not create a range Profesi" do
        expect { click_button "Save" }.not_to change(RangeProfesi, :count)
      end
    end
  end

  describe "go to upgrade page" do
    let(:save){ "Save" }
    let(:rangeprofesi) {FactoryGirl.create(:range_profesi)}
    
    before {visit edit_range_profesi_path(rangeprofesi) }

    it { should have_selector('title', text: "Update Range Profesi") }

    describe "edit and save record" do
      before do
        fill_in "profesi", with: "kedokteran Anak"
        fill_in "bobot", with: "6"
      end

      it "should update range not added" do
        expect { click_button save }.not_to change(RangeProfesi, :count)
      end
    end
  end

end