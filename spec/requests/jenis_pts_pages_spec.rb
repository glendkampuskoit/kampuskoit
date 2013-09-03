require 'spec_helper'

describe "Jenis Perguruan Tinggi Page" do

  subject { page }

  describe "Go to Index Page of Jenis Perguruan Tinggi" do
    before { visit jenis_pts_path }    
    it { should have_selector('title', text: "Data Jenis Perguruan Tinggi") }
  end

  describe "Add New Jenis Perguruan Tinggi with valid information" do
    before do
      visit new_jenis_pt_path
      fill_in "jenis_pt", with: "Universitas"
    end

    it "should create Jenis Perguruan Tinggi" do
      expect { click_button "Save" }.to change(JenisPt, :count)
    end
  end

  describe "Add New Jenis Perguruan Tinggi with invalid information" do
    before do
      visit new_jenis_pt_path
      fill_in "jenis_pt", with: ""
    end

    it "should not create Jenis Perguruan Tinggi" do
      expect { click_button "Save" }.not_to change(JenisPt, :count)
    end
  end

  describe "go to Edit Jenis Perguruan Tinggi page" do

  	let(:jenis_pt) { FactoryGirl.create(:jenis_pt) }
    let(:save) { "Save" }

  	before { visit edit_jenis_pt_path(jenis_pt) }

  	it { should have_selector('title', text: "Update Jenis Perguruan Tinggi") }

  	describe "Update Jenis Perguruan Tinggi" do
  		before do
	  		fill_in "jenis_pt", with: "Institut"
	  	end

	  	it "should create a jenis pt" do
	  		expect { click_button save }.not_to change(JenisPt, :count)
	    end
	  end
  end
end