require 'spec_helper'

describe "Range Pendidikan Terakhir page" do

  subject { page }
  
  describe "add a new record" do
    let(:submit) { "Save" }
    
    before do
      visit new_range_pendidikan_terakhir_path 
    end

    it "Index page should have right title Tambah Range Pendidikan Terakhir" do
      should have_selector('title', :text => "Tambah Range Pendidikan Terakhir")
    end

    describe "fill with valid data" do
      before do
        fill_in "pendidikan", with: "SMA"
      end

      it "should create a range Pendidikan Terakhir" do
        expect { click_button "Save" }.to change(RangePendidikanTerakhir, :count)
      end
    end
  end

  describe "go to index page" do
    before { visit range_pendidikan_terakhirs_path }

    it "should go to right page with title Range Pendidikan Terakhir" do
      should have_selector('title', :text => "Data Range Pendidikan Terakhir")
    end
  end

  describe "go to upgrade page" do
    let(:save){ "Save" }
    let(:rangependidikanterakhir) {FactoryGirl.create(:range_pendidikan_terakhir)}
    
    before {visit edit_range_pendidikan_terakhir_path(rangependidikanterakhir) }

    it { should have_selector('title', text: "Update Range Pendidikan Terakhir") }

    describe "edit and save record" do
      before do
        fill_in "pendidikan", with: "S1 Teknik Biologi"
      end

      it "should update range not added" do
            expect { click_button save }.not_to change(RangePendidikanTerakhir, :count)
          end
    end
  end

end