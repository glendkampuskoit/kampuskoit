require 'spec_helper'

describe "Range Pekerjaan Pertama page" do

  subject { page }

  describe "go to index page" do
    before { visit range_pekerjaan_pertamas_path }

    it "should go to right page with title Range Pekerjaan Pertama" do
      should have_selector('title', :text => "Data Range Pekerjaan Pertama")
    end
  end
  
  describe "add a new record" do
    let(:submit) { "Save" }

    describe "fill with valid data" do
      before do
        visit new_range_pekerjaan_pertama_path 
        fill_in "pekerjaan_pertama", with: "Konsultan IT"
        fill_in "bobot", with: "7"
      end

      it "should create a range Pekerjaan Pertama" do
        expect { click_button "Save" }.to change(RangePekerjaanPertama, :count)
      end
    end

    describe "fill with invalid data" do
      before do
        visit new_range_pekerjaan_pertama_path 
        fill_in "pekerjaan_pertama", with: ""
        fill_in "bobot", with: "7"
      end

      it "should not create a range Pekerjaan Pertama" do
        expect { click_button "Save" }.not_to change(RangePekerjaanPertama, :count)
      end
    end
  end

  describe "go to upgrade page" do
    let(:save){ "Save" }
    let(:range_pekerjaan_pertama) {FactoryGirl.create(:range_pekerjaan_pertama)}

    describe "edit and save record" do
      before do
        visit edit_range_pekerjaan_pertama_path(range_pekerjaan_pertama)
        fill_in "pekerjaan_pertama", with: "Staf"
        fill_in "bobot", with: "7"
      end

      it "should update range not added" do
        expect { click_button save }.not_to change(RangePekerjaanPertama, :count)
      end
    end
  end

end