require 'spec_helper'

describe "Prestasi Program Studi" do
  
  subject { page }

  let(:prodi_prestasi) { FactoryGirl.create(:prodi_prestasi) }
  let(:prodi_prestasi_index_path) { univ_prodi_prodi_prestasis_path(prodi_prestasi.prodi.univ, prodi_prestasi.prodi)  }
  let(:prodi_prestasi_edit_path) { edit_univ_prodi_prodi_prestasi_path(prodi_prestasi.prodi.univ, prodi_prestasi.prodi, prodi_prestasi)  }
  let(:prodi_prestasi_delete_path) { univ_prodi_prodi_prestasi_path(prodi_prestasi.prodi.univ, prodi_prestasi.prodi, prodi_prestasi) }

  before { visit prodi_prestasi_index_path }

  describe "should have right title" do
    it { should have_selector('title', text: "Data Prestasi Program Studi") } 
  end

  describe "input new prestasi prodi with valid data" do
    before do
      visit prodi_prestasi_index_path
      fill_in "tahun", with: 1990
      fill_in "prestasi", with: "Juara Catur"
    end
    it "should create a prestasi prodi" do
      expect { click_button "Save" }.to change(ProdiPrestasi, :count)
    end
  end

  describe "input new prestasi prodi with invalid data" do
    before do
      visit prodi_prestasi_index_path
      fill_in "tahun", with: 1990
      fill_in "prestasi", with: ""
    end
    it "should not create a prestasi prodi" do
      expect { click_button "Save" }.not_to change(ProdiPrestasi, :count)
    end
  end

  describe "edit prestasi prodi" do
    before do
      visit prodi_prestasi_edit_path
      fill_in "tahun", with: 1980
      fill_in "prestasi", with: "Lab"
    end
    it "should not create a prestasi prodi" do
      expect { click_button "Save" }.not_to change(ProdiPrestasi, :count)
    end
  end
end
