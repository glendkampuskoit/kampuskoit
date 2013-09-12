require 'spec_helper'

describe "Range Gaji Pertama Page" do
	let(:submit) {"Save"}
	subject { page }

	describe "add new record" do
		before do
			visit new_range_gaji_pertama_path
		end

		it " Index page should have right title Tambah Range Gaji Pertama" do
		should have_selector('title', :text => "Tambah Range Gaji Pertama")
		end

		describe "fill with valid data" do
			before do
				fill_in "gaji_pertama", with: "5 Juta"
			end
		
			it "should create a range gaji pertama" do
				expect {click_button submit}.to change(RangeGajiPertama, :count)
			end
		end
	end

	describe "go to index page" do
    	before { visit range_gaji_pertamas_path }

    	it "should go to right page with title Range Gaji Pertama" do
      		should have_selector('title', :text => "Data Range Gaji Pertama")
    	end
  	end

  	describe "go to update page" do
    	let(:save) { "Save" }
    	let(:rangegajipertama) { FactoryGirl.create(:range_gaji_pertama) }
    	before { visit edit_range_gaji_pertama_path(rangegajipertama) }

    	it { should have_selector('title', text: "Update Range Gaji Pertama") }

    	# and then update record
    	describe "edit and save record" do
	      	before do
	        	fill_in "gaji_pertama", with: "10 Juta"
	      	end

	      	it "should update Bidang Kerja not added" do
	        	expect { click_button save }.not_to change(RangeGajiPertama, :count)
	      	end
    	end
  	end
end