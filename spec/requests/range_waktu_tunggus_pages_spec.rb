require 'spec_helper'

describe "range waktu_tunggu page" do
	subject { page }

	describe "go to index page" do
		before { visit range_waktu_tunggus_path }

		it "should go to right page with title Range Waktu Tunggu" do
			should have_selector('title', :text => "Data Range Waktu Tunggu" )
		end
	end

	describe "add new record" do
		let (:submit) { "Save" }

		describe "fill with valid data" do
			before do
				visit new_range_waktu_tunggu_path
				fill_in "waktu_tunggu", with: "Kurang dari 3 bulan"
				fill_in "bobot", with: "4"
			end
			it "should create a Range Waktu Tunggu" do
				expect { click_button submit }.to change(RangeWaktuTunggu, :count )
			end
		end

		describe "fill with invalid data" do
			before do
				visit new_range_waktu_tunggu_path
				fill_in "waktu_tunggu", with: "Kurang dari 3 bulan"
				fill_in "bobot", with: ""
			end
			it "should not create a Range Waktu Tunggu" do
				expect { click_button submit }.not_to change(RangeWaktuTunggu, :count )
			end
		end
	end

	describe "go to upgrade page" do
		let(:save){ "Save" }
		let(:range_waktu_tunggu) { FactoryGirl.create(:range_waktu_tunggu) }
		
		describe "edit and save record" do
			before do
				visit edit_range_waktu_tunggu_path(range_waktu_tunggu)
				fill_in "waktu_tunggu", with: "Lebih dari 3 bulan"
				fill_in "bobot", with: "2"
			end

			it "should update range not added" do
    		expect { click_button save }.not_to change(RangeWaktuTunggu, :count)
  		end
		end
	end
end

