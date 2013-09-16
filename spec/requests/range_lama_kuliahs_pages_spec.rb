require 'spec_helper'

describe "Range Lama Kuliah page" do

  subject { page }

  describe "go to index page" do
    before { visit range_lama_kuliahs_path }

    it "should go to right page with title Range Lama Kuliah" do
      should have_selector('title', :text => "Data Range Lama Kuliah")
    end
  end
  
  describe "add a new record" do
    let(:submit) { "Save" }

    describe "fill with valid data" do
      before do
        visit new_range_lama_kuliah_path 
        fill_in "lama", with: "5 Tahun"
        fill_in "bobot", with: "4"
      end

      it "should create a range Lama Kuliah" do
        expect { click_button "Save" }.to change(RangeLamaKuliah, :count)
      end
    end

    describe "fill with invalid data" do
      before do
        visit new_range_lama_kuliah_path 
        fill_in "lama", with: "5 Tahun"
        fill_in "bobot", with: ""
      end

      it "should not create a range Lama Kuliah" do
        expect { click_button "Save" }.not_to change(RangeLamaKuliah, :count)
      end
    end
  end

  describe "go to upgrade page" do
    let(:save){ "Save" }
    let(:range_lama_kuliah) {FactoryGirl.create(:range_lama_kuliah)}

    describe "edit and save record" do
      before do
        visit edit_range_lama_kuliah_path(range_lama_kuliah)
        fill_in "lama", with: "4 Tahun"
        fill_in "bobot", with: "4"
      end

      it "should update range not added" do
        expect { click_button save }.not_to change(RangeLamaKuliah, :count)
      end
    end
  end
end