require 'spec_helper'

describe "Univ Beasiswa Page" do 

	subject {page}

	let(:univbeasiswa) { FactoryGirl.create(:univbeasiswa) }
	let(:univbeasiswa_index_path) {univ_univbeasiswas_path(univbeasiswa.univ)}
	let(:univbeasiswa_new_path) {new_univ_univbeasiswa_path(univbeasiswa.univ)}
	let(:univbeasiswa_edit_path) {edit_univ_univbeasiswa_path(univbeasiswa.univ, univbeasiswa)}

	before {visit univbeasiswa_index_path }
	
	it{ should have_selector('title', text: "Data Beasiswa Perguruan Tinggi")}

	describe "Tambah Univ Beasiswa" do
		before do
			visit univbeasiswa_new_path
			fill_in "nama_beasiswa", with: "Supersemar"
			fill_in "instansi", with: "Pemerintah"
			fill_in "periode", with: "2013-2014"
			fill_in "nilai", with: "2000000"
		end
		it "should add new record" do
			expect { click_button "Save" }.to change(Univbeasiswa, :count)
		end
	end

	describe "Add Univ beasiswa with invalid information" do
		before do
			visit univbeasiswa_new_path
			fill_in "nama_beasiswa", with: "Supersemar"
			fill_in "instansi", with: ""
			fill_in "periode", with: ""
			fill_in "nilai", with: "2000000"
		end
		it "should not add new record" do
			expect { click_button "Save" }.not_to change(Univbeasiswa, :count)
		end
	end

	describe "Ubah Univ Beasiswa" do
		before do
			visit univbeasiswa_edit_path
			fill_in "nama_beasiswa", with: "Bank Indonesia"
			fill_in "instansi", with: "Pemerintah"
			fill_in "periode", with: "2013-2014"
			fill_in "nilai", with: "1000000"
		end
		it "should update record" do
    	expect { click_button "Save" }.not_to change(Univbeasiswa, :count)
    end
	end

	describe "Ubah Univ Beasiswa with invalid information" do
		before do
			visit univbeasiswa_edit_path
			fill_in "nama_beasiswa", with: "Bank Indonesia"
			fill_in "instansi", with: ""
			fill_in "periode", with: ""
			fill_in "nilai", with: "1000000"
		end
		it "should not update record" do
    	expect { click_button "Save" }.not_to change(Univbeasiswa, :count)
    end
	end
end