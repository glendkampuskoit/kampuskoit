require 'spec_helper'

describe "Univ biaya page" do 

	subject {page}

	let(:univbiaya) { FactoryGirl.create(:univbiaya) }
	let(:univbiaya_index_path) {univ_univbiayas_path(univbiaya.univ)}
	let(:univbiaya_new_path) {new_univ_univbiaya_path(univbiaya.univ)}
	let(:univbiaya_edit_path) {edit_univ_univbiaya_path(univbiaya.univ, univbiaya)}

	before {visit univbiaya_index_path }

	it{ should have_selector('title', text: "Data Biaya Perguruan Tinggi")}

	describe "Tambah univ biaya" do
		before do
			visit univbiaya_new_path
			fill_in "biaya", with: "Uang Gedung"
			fill_in "nilai", with: "1.000.000"
		end
		it "should add new record" do
	    	expect { click_button "Save" }.to change(Univbiaya, :count)
	    end
	end

	describe "Ubah univ biaya" do
		before do
			visit univbiaya_edit_path
			fill_in "biaya", with: "Uang Pangkal"
			fill_in "nilai", with: "500.000"
		end

		it "should update record" do
	    	expect { click_button "Save" }.not_to change(Univbiaya, :count)
	    end
	end
	
end