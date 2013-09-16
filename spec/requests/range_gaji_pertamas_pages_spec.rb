require 'spec_helper'

describe "Range Gaji Pertama Page" do
	let(:submit) {"Save"}
	subject { page }

	describe "go to index page" do
  	before { visit range_gaji_pertamas_path }

  	it "should go to right page with title Range Gaji Pertama" do
  		should have_selector('title', :text => "Data Range Gaji Pertama")
  	end
	end

	describe "add new record" do

		describe "fill with valid data" do
			before do
				visit new_range_gaji_pertama_path
				fill_in "gaji_pertama", with: "5 Juta"
				fill_in "bobot", with: "5 Juta"
			end
		
			it "should create a range gaji pertama" do
				expect { click_button submit }.to change(RangeGajiPertama, :count)
			end
		end

		describe "fill with invalid data" do
			before do
				visit new_range_gaji_pertama_path
				fill_in "gaji_pertama", with: ""
				fill_in "bobot", with: ""
			end
		
			it "should not create a range gaji pertama" do
				expect { click_button submit }.not_to change(RangeGajiPertama, :count)
			end
		end
	end

	describe "go to update page" do
		
  	let(:save) { "Save" }
  	let(:range_gaji_pertama) { FactoryGirl.create(:range_gaji_pertama) }

  	# and then update record
  	describe "edit and save record" do
    	before do
    		visit edit_range_gaji_pertama_path(range_gaji_pertama)
      	fill_in "gaji_pertama", with: "10 Juta"
      	fill_in "bobot", with: "5"
    	end

    	it "should update Bidang Kerja not added" do
      	expect { click_button save }.not_to change(RangeGajiPertama, :count)
    	end
  	end
	end
end