require 'spec_helper'

describe "Prodi Bidang Page" do

  subject { page }
  
  describe "go to prodi bidang index page" do
    before { visit prodi_bidangs_path }
    it { page.should have_selector('title', :text => 'Data Bidang Program Studi') }
  end

  describe "add prodi bidang" do
    before { visit new_prodi_bidang_path }

    describe "add with valid data" do
      before do
        fill_in "prodi_bidang_nama_bidang", with: "Sistem Informasi"
        fill_in "prodi_bidang_spesialisasi", with: "Kungfu"
        fill_in "prodi_bidang_gambaran", with: "Belajar IT"
        fill_in "prodi_bidang_pilihan_karir", with: "Dosen dan pogrammer"
        fill_in "prodi_bidang_keterampilan_kunci", with: "Analitik"
      end

      it "should add new record" do
        expect { click_button "Save" }.to change(ProdiBidang, :count)
      end
    end    
  end

  describe "update prodi bidang" do
    let(:prodi_bidang) { FactoryGirl.create(:prodi_bidang) }
    before { visit edit_prodi_bidang_path(prodi_bidang) }

    # update record
    describe "update record" do
      before do
        fill_in "prodi_bidang_nama_bidang", with: "Sistem Informasi"
        fill_in "prodi_bidang_spesialisasi", with: "Kungfu"
        fill_in "prodi_bidang_gambaran", with: "Belajar IT"
        fill_in "prodi_bidang_pilihan_karir", with: "Dosen dan pogrammer"
        fill_in "prodi_bidang_keterampilan_kunci", with: "Analitik"
      end
      
      it "should not create a record - just updated" do
        expect { click_button "Save" }.not_to change(ProdiBidang, :count)
      end
    end
  end
end
