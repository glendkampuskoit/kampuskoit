require 'spec_helper'

describe "Prodi Biaya" do
  
  subject { page }

  let(:prodi_biaya) { FactoryGirl.create(:prodi_biaya) }
  let(:prodi_biaya_index_path) { univ_prodi_prodi_biayas_path(prodi_biaya.prodi.univ, prodi_biaya.prodi) }
  let(:prodi_biaya_new_path) { new_univ_prodi_prodi_biaya_path(prodi_biaya.prodi.univ, prodi_biaya.prodi) }
  let(:prodi_biaya_edit_path) { edit_univ_prodi_prodi_biaya_path(prodi_biaya.prodi.univ, prodi_biaya.prodi, prodi_biaya) }

  before { visit prodi_biaya_index_path }

  describe "should have righ title" do
  	it { should have_selector('title', text: "Data Biaya Program Studi") } 
  end

  describe "create a prodi biaya with valid information" do
    before do
      visit prodi_biaya_new_path
      fill_in "biaya", with: "Biaya SPP"
      fill_in "nilai", with: "Rp 50000"
    end

    it "should create a prodi_biaya" do
      expect { click_button "Save" }.to change(ProdiBiaya, :count)
    end
  end

  describe "create a prodi biaya with invalid information" do
    before do
      visit prodi_biaya_new_path
      fill_in "biaya", with: "Biaya SPP"
      fill_in "nilai", with: ""
    end

    it "should not create a prodi_biaya" do
      expect { click_button "Save" }.not_to change(ProdiBiaya, :count)
    end
  end

  describe "update a prodi with valid information" do
    before do
      visit prodi_biaya_edit_path
      fill_in "biaya", with: "Biaya SPP"
      fill_in "nilai", with: "Rp 50000"
    end
    
    it "should only update a prodi_biaya" do
      expect { click_button "Save" }.not_to change(ProdiBiaya, :count)
    end
  end
end