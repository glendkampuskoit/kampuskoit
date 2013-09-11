require 'spec_helper'

describe "Fasilitas Program Studi" do

	subject { page }
	let(:prodi) { FactoryGirl.create(:prodi) }
	let(:prodi_fasil) { FactoryGirl.create(:prodi_fasil)}

	describe "go to prodi fasil page" do
		before { visit univ_prodi_prodi_fasils_path(prodi.univ, prodi) }
		it { should have_selector("title", text: "Data Fasilitas Program Studi")}
	end

	describe "add new prodi fasil page" do
		before do
			visit univ_prodi_prodi_fasils_path(prodi.univ, prodi) 
			fill_in "fasilitas", with: "Lapangan Sepak Bola"
		end
		it { expect { click_button "Save" }.to change(ProdiFasil, :count) }
	end

	describe "update prodi fasil" do
		before do
			visit edit_univ_prodi_prodi_fasil_path(prodi, prodi.univ, prodi_fasil)
			fill_in "fasilitas", with: "Lapangan Basket"
		end
		it { expect { click_button "Save" }.not_to change(ProdiFasil, :count) }
	end
end