require 'spec_helper'

describe "Jenis Perguruan Tinggi Page" do

  subject { page }

  describe "go to index page" do
    before { visit jenis_pts_path }
    
    it { should have_selector('title', text: "Jenis Perguruan Tinggi") }
  end

  describe "go to tambah jenis pt page" do
  	before { visit new_jenis_pt_path }
  	it { should have_selector('title', text: "Tambah Jenis Perguruan Tinggi") }

  	# and then add one record
  	describe "add new one" do
  		let(:save) { "Save" }
  		before do
  			fill_in "jenis_pt", with: "Universitas"
  		end

  		it "should create a jenis pt" do
        expect { click_button save }.to change(JenisPt, :count)
      end
  	end
  end

  describe "go to edit jenis pt page" do
  	let(:jenis_pt) { FactoryGirl.create(:jenis_pt) }
    let(:save) { "Save" }
  	before { visit edit_jenis_pt_path(jenis_pt) }

  	it { should have_selector('title', text: "Update Jenis Perguruan Tinggi") }

  	describe "update record" do
  		before do
	  		fill_in "jenis_pt", with: "Institut"
	  	end

	  	it "should create a jenis pt" do
	  		expect { click_button save }.not_to change(JenisPt, :count)
	    end
	  end
  end
end



