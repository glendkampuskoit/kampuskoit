require 'spec_helper'

describe "Range Pekerjaan Pertama page" do

  subject { page }
  
  describe "add a new record" do
    let(:submit) { "Save" }
    
    before do
      visit new_range_pekerjaan_pertama_path 
    end

    it "Index page should have right title Tambah Range Pekerjaan Pertama" do
      should have_selector('title', :text => "Tambah Range Pekerjaan Pertama")
    end

    describe "fill with valid data" do
      before do
        fill_in "pekerjaan_pertama", with: "Konsultan IT"
      end

      it "should create a range Pekerjaan Pertama" do
        expect { click_button "Save" }.to change(RangePekerjaanPertama, :count)
      end
    end
  end

  describe "go to index page" do
    before { visit range_pekerjaan_pertamas_path }

    it "should go to right page with title Range Pekerjaan Pertama" do
      should have_selector('title', :text => "Data Range Pekerjaan Pertama")
    end
  end

  describe "go to upgrade page" do
    let(:save){ "Save" }
    let(:rangepekerjaanpertama) {FactoryGirl.create(:range_pekerjaan_pertama)}
    
    before {visit edit_range_pekerjaan_pertama_path(rangepekerjaanpertama) }

    it { should have_selector('title', text: "Update Range Pekerjaan Pertama") }

    describe "edit and save record" do
      before do
        fill_in "pekerjaan_pertama", with: "Staf"
      end

      it "should update range not added" do
            expect { click_button save }.not_to change(RangePekerjaanPertama, :count)
          end
    end
  end

end