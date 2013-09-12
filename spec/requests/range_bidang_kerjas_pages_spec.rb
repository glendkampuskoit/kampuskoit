require 'spec_helper'

describe "Range Bidang Kerja page " do
	let(:submit) {"Save"}
	subject { page }

	describe "add new record" do 
		before do 
			visit new_range_bidang_kerja_path
		end

		it " Index page should have right title Tambah Range Bidang Kerja" do
			should have_selector('title', :text => "Tambah Range Bidang Kerja" )
		end

		describe "fill with valid data" do
			before do
				fill_in "bidang", with: "Perkebunan" 
			end 

			it "Should create a range bidang kerja" do
				expect {click_button submit}.to change(RangeBidangKerja, :count)
			end
		end
	end

	describe "go to index page" do
    	before { visit range_bidang_kerjas_path }

    	it "should go to right page with title Range Gaji" do
      		should have_selector('title', :text => "Data Range Bidang Kerja")
    	end
  	end

	describe "go to update page" do
    	let(:save) { "Save" }
    	let(:rangebidangkerja) { FactoryGirl.create(:range_bidang_kerja) }
    	before { visit edit_range_bidang_kerja_path(rangebidangkerja) }

    	it { should have_selector('title', text: "Update Range Bidang Kerja") }

    	# and then update record
    	describe "edit and save record" do
	      	before do
	        	fill_in "bidang", with: "Peternakan"
	      	end

	      	it "should update Bidang Kerja not added" do
	        	expect { click_button save }.not_to change(RangeBidangKerja, :count)
	      	end
    	end
  	end
	
end
