require 'spec_helper'

describe "Range Lama Kuliah page" do

  subject { page }
  
  describe "add a new record" do
    let(:submit) { "Save" }
    
    before do
      visit new_range_lama_kuliah_path 
    end

    it "Index page should have right title Tambah Range Lama Kuliah" do
      should have_selector('title', :text => "Tambah Range Lama Kuliah")
    end

    describe "fill with valid data" do
      before do
        fill_in "lama", with: "5 Tahun"
      end

      it "should create a range Lama Kuliah" do
        expect { click_button "Save" }.to change(RangeLamaKuliah, :count)
      end
    end
  end

  describe "go to index page" do
    before { visit range_lama_kuliahs_path }

    it "should go to right page with title Range Lama Kuliah" do
      should have_selector('title', :text => "Data Range Lama Kuliah")
    end
  end

  describe "go to upgrade page" do
    let(:save){ "Save" }
    let(:rangelamakuliah) {FactoryGirl.create(:range_lama_kuliah)}
    
    before {visit edit_range_lama_kuliah_path(rangelamakuliah) }

    it { should have_selector('title', text: "Update Range Lama Kuliah") }

    describe "edit and save record" do
      before do
        fill_in "lama", with: "4 Tahun"
      end

      it "should update range not added" do
            expect { click_button save }.not_to change(RangeLamaKuliah, :count)
          end
    end
  end

end