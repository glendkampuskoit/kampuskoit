require 'spec_helper'

describe "Range Level Karir page" do

  subject { page }
  
  describe "add a new record" do
    let(:submit) { "Save" }
    
    before do
      visit new_range_level_karir_path 
    end

    it "Index page should have right title Tambah Range Level Karir" do
      should have_selector('title', :text => "Tambah Range Level Karir")
    end

    describe "fill with valid data" do
      before do
        fill_in "level_karir", with: "Management"
      end

      it "should create a range Level Karir" do
        expect { click_button "Save" }.to change(RangeLevelKarir, :count)
      end
    end
  end

  describe "go to index page" do
    before { visit range_level_karirs_path }

    it "should go to right page with title Range Level Karir" do
      should have_selector('title', :text => "Data Range Level Karir")
    end
  end

  describe "go to upgrade page" do
    let(:save){ "Save" }
    let(:rangelevelkarir) {FactoryGirl.create(:range_level_karir)}
    
    before {visit edit_range_level_karir_path(rangelevelkarir) }

    it { should have_selector('title', text: "Update Range Level Karir") }

    describe "edit and save record" do
      before do
        fill_in "level_karir", with: "Staf"
      end

      it "should update range not added" do
            expect { click_button save }.not_to change(RangeLevelKarir, :count)
          end
    end
  end

end