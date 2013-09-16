require 'spec_helper'

describe "Range Pendidikan Terakhir page" do

  subject { page }

  describe "go to index page" do
    before { visit range_pendidikan_terakhirs_path }

    it "should go to right page with title Range Pendidikan Terakhir" do
      should have_selector('title', :text => "Data Range Pendidikan Terakhir")
    end
  end
  
  describe "add a new record" do
    let(:submit) { "Save" }
    
    describe "fill with valid data" do
      before do
        visit new_range_pendidikan_terakhir_path 
        fill_in "pendidikan", with: "SMA"
        fill_in "bobot", with: "6"
      end

      it "should create a range Pendidikan Terakhir" do
        expect { click_button "Save" }.to change(RangePendidikanTerakhir, :count)
      end
    end

    describe "fill with invalid data" do
      before do
        visit new_range_pendidikan_terakhir_path 
        fill_in "pendidikan", with: "SMA"
        fill_in "bobot", with: ""
      end

      it "should not create a range Pendidikan Terakhir" do
        expect { click_button "Save" }.not_to change(RangePendidikanTerakhir, :count)
      end
    end
  end

  describe "go to upgrade page" do
    let(:save){ "Save" }
    let(:range_pendidikan_terakhir) { FactoryGirl.create(:range_pendidikan_terakhir) }

    describe "edit and save record" do
      before do
        visit edit_range_pendidikan_terakhir_path(range_pendidikan_terakhir)
        fill_in "pendidikan", with: "S1 Teknik Biologi"
        fill_in "bobot", with: "1"
      end

      it "should update range not added" do
        expect { click_button save }.not_to change(RangePendidikanTerakhir, :count)
      end
    end
  end
end