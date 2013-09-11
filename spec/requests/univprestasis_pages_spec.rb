require 'spec_helper'

describe "Univ prestasi page" do 

	subject { page }

	let(:univprestasi) { FactoryGirl.create(:univprestasi) }
	let(:univprestasi_index_path) { univ_univprestasis_path(univprestasi.univ) }
	let(:univprestasi_new_path) { new_univ_univprestasi_path(univprestasi.univ) }
	let(:univprestasi_edit_path) { edit_univ_univprestasi_path(univprestasi.univ, univprestasi) }

	before { visit univprestasi_index_path }

	it { should have_selector('title', text: "Data Prestasi Perguruan Tinggi")}

	describe "Tambah univ prestasi" do
		before do
			visit univprestasi_new_path
			fill_in "tahun", with: "2012"
			fill_in "prestasi", with: "Juara Koding"
		end

		it "should add new record" do
			expect { click_button "Save" }.to change(Univprestasi, :count)
		end
	end

	describe "Tambah univ prestasi with invalid information" do
		before do
			visit univprestasi_new_path
			fill_in "tahun", with: "2012"
			fill_in "prestasi", with: ""
		end

		it "should not add new record" do
			expect { click_button "Save" }.not_to change(Univprestasi, :count)
		end
	end

	describe "Ubah univ prestasi" do
		before do
			visit univprestasi_edit_path
			fill_in "tahun", with: "2013"
			fill_in "prestasi", with: "Juara Lomba Renang"
		end

		it "should update record" do
			expect { click_button "Save" }.not_to change(Univprestasi, :count)
		end
	end

	describe "Ubah univ prestasi with invalid information" do
		before do
			visit univprestasi_edit_path
			fill_in "tahun", with: ""
			fill_in "prestasi", with: ""
		end

		it "should not update record" do
			expect { click_button "Save" }.not_to change(Univprestasi, :count)
		end
	end

end