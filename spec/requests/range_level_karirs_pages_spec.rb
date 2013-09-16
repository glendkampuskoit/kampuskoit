require 'spec_helper'

describe "Range Level Karir page" do

  subject { page }

  describe "go to index page" do
    before { visit range_level_karirs_path }

    it "should go to right page with title Range Level Karir" do
      should have_selector('title', :text => "Data Range Level Karir")
    end
  end
  
  describe "add a new record" do
    let(:submit) { "Save" }

    describe "fill with valid data" do
      before do
        visit new_range_level_karir_path 
        fill_in "level_karir", with: "Management"
        fill_in "bobot", with: "4"
      end

      it "should create a range Level Karir" do
        expect { click_button "Save" }.to change(RangeLevelKarir, :count)
      end
    end

    describe "fill with invalid data" do
      before do
        visit new_range_level_karir_path 
        fill_in "level_karir", with: "Management"
        fill_in "bobot", with: ""
      end

      it "should not create a range Level Karir" do
        expect { click_button "Save" }.not_to change(RangeLevelKarir, :count)
      end
    end
  end

  describe "go to upgrade page" do
    let(:save){ "Save" }
    let(:rangelevelkarir) {FactoryGirl.create(:range_level_karir)}
    
    describe "edit and save record" do
      before do
        visit edit_range_level_karir_path(rangelevelkarir)
        fill_in "level_karir", with: "Staf"
        fill_in "bobot", with: "8"
      end

      it "should update range not added" do
        expect { click_button save }.not_to change(RangeLevelKarir, :count)
      end
    end
  end

end