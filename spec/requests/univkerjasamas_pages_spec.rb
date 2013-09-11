require 'spec_helper'

describe "Univ Kerjasama pages" do

	subject { page }

	let (:univkerjasama) { FactoryGirl.create(:univkerjasama) }
	let (:univ_kerjasama_index_path) { univ_univkerjasamas_path(univkerjasama.univ) }
	let (:univ_kerjasama_edit_path) { edit_univ_univkerjasama_path(univkerjasama.univ, univkerjasama) }

	before { visit univ_kerjasama_index_path }
	it { should have_selector('title', text: "Data Kerjasama Perguruan Tinggi") }
	

	describe "create a univ kerjasama with valid information" do
		before do
			visit univ_kerjasama_index_path
			fill_in "kerjasama", with: "Kerjasama bidang peternakan"
		end

		it "should create a univ kerjasama" do
      expect { click_button "Save" }.to change(Univkerjasama, :count)
    end
	end

	describe "update univ kerjasama with valid information" do
		before do
			visit univ_kerjasama_edit_path
			fill_in "kerjasama", with: "Kerjasama bidang pertanian"
		end

		it "should update univ kerjasama" do
      expect { click_button "Save" }.not_to change(Univkerjasama, :count)
    end
	end
end