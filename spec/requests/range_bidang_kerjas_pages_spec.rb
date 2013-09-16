require 'spec_helper'

describe "Range Bidang Kerja page " do
	let(:submit) { "Save" }
	subject { page }

	describe "go to index page" do
  	before { visit range_bidang_kerjas_path }

  	it "should go to right page with title Range Gaji" do
    		should have_selector('title', :text => "Data Range Bidang Kerja")
  	end
	end

	describe "add new record" do 

		describe "fill with valid data" do
			before do
				visit new_range_bidang_kerja_path
				fill_in "bidang", with: "Perkebunan" 
				fill_in "bobot", with: "5" 
			end

			it "Should create a range bidang kerja" do
				expect {click_button submit}.to change(RangeBidangKerja, :count)
			end
		end

		describe "fill with invalid data" do
			before do
				visit new_range_bidang_kerja_path
				fill_in "bidang", with: "" 
				fill_in "bobot", with: "5" 
			end

			it "Should create a range bidang kerja" do
				expect {click_button submit}.not_to change(RangeBidangKerja, :count)
			end
		end
	end

	describe "go to update page" do
  	let(:save) { "Save" }
  	let(:range_bidang_kerja) { FactoryGirl.create(:range_bidang_kerja) }

  	# and then update record
  	describe "edit and save record" do
    	before do
    		visit edit_range_bidang_kerja_path(range_bidang_kerja)
      	fill_in "bidang", with: "Peternakan"
      	fill_in "bobot", with: "5"
    	end

    	it "should update Bidang Kerja not added" do
      	expect { click_button save }.not_to change(RangeBidangKerja, :count)
    	end
  	end
	end	
end