require 'spec_helper'

describe "Fasilitas Program Studi" do

	subject { page }
	let(:univ_fasilitas) { FactoryGirl.create(:univfasilitas)}
	let(:univ_fasilitas_index_path) { univ_univfasilitases_path(univ_fasilitas.univ) }
	let(:univ_fasilitas_edit_path) { edit_univ_univfasilitas_path(univ_fasilitas.univ, univ_fasilitas) }

	describe "go to univ fasilitas index page" do
		before do 
			visit univ_fasilitas_index_path
		end
		it { should have_selector("title", text: "Data Fasilitas Perguruan Tinggi")}
	end

	describe "create a new univ fasilitas with valid information" do
		before do
			visit univ_fasilitas_index_path
			fill_in "fasilitas", with: "Lapangan Takram"
		end
		it { expect { click_button "Save" }.to change(Univfasilitas, :count) }
	end

	describe "update univ fasilitas with valid information" do
		before do
			visit univ_fasilitas_edit_path
			fill_in "fasilitas", with: "Lapangan Bola"
		end
		it { expect { click_button "Save" }.not_to change(Univfasilitas, :count) }
	end
end