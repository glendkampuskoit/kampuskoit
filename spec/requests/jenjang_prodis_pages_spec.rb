require 'spec_helper'

describe "Jenjang Prodi Page" do

  subject { page }

  describe "go to index page" do
    before { visit jenjang_prodis_path }
    
    it { should have_selector('title', text: "Data Jenjang Program Studi") }
  end

  describe "go to tambah jenjang prodi page" do
  	before { visit new_jenjang_prodi_path }
  	it { should have_selector('title', text: "Tambah Jenjang Jurusan") }

  	# and then add one record
  	describe "add new one" do
  		let(:save) { "Save" }
  		before do
  			fill_in "jenjang_prodi_jenjang", with: "S1"
        fill_in "jenjang_prodi_keterangan", with: "Sarjana"
  		end

  		it "should create a jenjang prodi" do
        expect { click_button save }.to change(JenjangProdi, :count)
      end
  	end
  end

  describe "go to edit jenjang prodi page" do
  	let(:jenjang_prodi) { FactoryGirl.create(:jenjang_prodi) }
    let(:save) { "Save" }
  	before { visit edit_jenjang_prodi_path(jenjang_prodi) }

  	it { should have_selector('title', text: "Update Jenjang Jurusan") }

  	describe "update record" do
  		before do
	  		fill_in "jenjang_prodi_jenjang", with: "S2"
        fill_in "jenjang_prodi_keterangan", with: "Master"
	  	end

	  	it "should create a jenjang prodi" do
	  		expect { click_button save }.not_to change(JenjangProdi, :count)
	    end
	  end
  end
end