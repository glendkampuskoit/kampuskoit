require 'spec_helper'

describe "Range Profesi page" do

  subject { page }
  
  describe "add a new record" do
    let(:submit) { "Save" }
    
    before do
      visit new_range_profesi_path 
    end

    it "Index page should have right title Tambah Range Profesi" do
      should have_selector('title', :text => "Tambah Range Profesi")
    end

    describe "fill with valid data" do
      before do
        fill_in "profesi", with: "Keguruan"
      end

      it "should create a range Profesi" do
        expect { click_button "Save" }.to change(RangeProfesi, :count)
      end
    end
  end

  describe "go to index page" do
    before { visit range_profesis_path }

    it "should go to right page with title Range Profesi" do
      should have_selector('title', :text => "Data Range Profesi")
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
      end

      it "should update range not added" do
            expect { click_button save }.not_to change(RangeProfesi, :count)
          end
    end
  end

end