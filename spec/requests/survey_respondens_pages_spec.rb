require 'spec_helper'

describe "Survey Responden" do 

	let(:prodi) { FactoryGirl.create(:prodi) }
	let(:range_gaji) { FactoryGirl.create(:range_gaji) }
	let(:range_bidang_kerja) { FactoryGirl.create(:range_bidang_kerja) }
	let(:range_waktu_tunggu) { FactoryGirl.create(:range_waktu_tunggu) }
	let(:range_lama_kuliah) { FactoryGirl.create(:range_lama_kuliah) }
	let(:range_ipk) { FactoryGirl.create(:range_ipk) }
	let(:range_pekerjaan_pertama) { FactoryGirl.create(:range_pekerjaan_pertama) }
	let(:range_profesi) { FactoryGirl.create(:range_profesi) }
	let(:range_pendidikan_terakhir) { FactoryGirl.create(:range_pendidikan_terakhir) }
	let(:range_gaji_pertama) { FactoryGirl.create(:range_gaji_pertama) }
	let(:range_level_karir) { FactoryGirl.create(:range_level_karir) }

	before do		
		prodi
		range_gaji
		range_bidang_kerja
		range_waktu_tunggu
		range_lama_kuliah
		range_ipk
		range_pekerjaan_pertama
		range_profesi
		range_pendidikan_terakhir
		range_gaji_pertama
		range_level_karir
	end
	
	pending "fill form with valid data" do
		before do
			visit new_survey_responden_path			
			fill_in "usia", with: 25

		end
		it "Should create a survey responden" do
			expect { click_button submit }.to change(SurveyResponden, :count)
		end
	end
end