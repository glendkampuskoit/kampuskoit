require 'spec_helper'

describe "range waktu_tunggu page" do
	subject { page }

	describe "add new record" do
		let (:submit) { "Save" }
		before do
			visit new_range_waktu_tunggu_path
		end

		it "Index page should have right title Tambah Range Waktu Tunggu" do
			should have_selector('title', :text => "Tambah Range Waktu Tunggu")
		end

		describe "fill with valid data" do
			before do
				fill_in "waktu_tunggu", with: "Kurang dari 3 bulan" 	
			end
			it "should create a Range Waktu Tunggu" do
				expect { click_button submit }.to change(RangeWaktuTunggu, :count )
			end
		end
	end

	describe "go to index page" do
		before { visit range_waktu_tunggus_path }

		it "should go to right page with title Range Waktu Tunggu" do
			should have_selector('title', :text => "Data Range Waktu Tunggu" )
		end
	end

	describe "go to upgrade page" do
		let(:save){ "Save" }
		let(:rangewaktutunggu) {FactoryGirl.create(:range_waktu_tunggu)}
		
		before {visit edit_range_waktu_tunggu_path(rangewaktutunggu) }

		it { should have_selector('title', text: "Update Range Waktu Tunggu") }

		describe "edit and save record" do
			before do
				fill_in "waktu_tunggu", with: "Lebih dari 3 bulan"
			end

			it "should update range not added" do
        		expect { click_button save }.not_to change(RangeWaktuTunggu, :count)
      		end
		end
	end
end

