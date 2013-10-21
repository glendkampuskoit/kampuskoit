require 'spec_helper'

describe 'Survey Responden' do 
	subject { page }
	
	describe "add new record" do

		describe "fill with valid data" do
			before do
				visit new_survey_responden_path
				fill_in "range_gaji_id", with: '1'
				fill_in "range_bidang_kerja_id", with: '2' 
				fill_in "range_waktu_tunggu_id", with: '3'
				fill_in "range_lama_kuliah_id", with: '1' 
				fill_in "range_ipk_id", with: '2'
				fill_in "range_pekerjaan_pertama_id", with: '2' 
				fill_in "range_profesi_id", with: '1'
				fill_in "range_pendidikan_terakhir_id", with: '1' 
				fill_in "range_gaji_pertama_id", with: '2'
				fill_in "range_level_karir_id", with: '1' 
			end
			it "Should create a survey responden" do
				expect {click_button submit}.to change(SurveyResponden, :count)
			end
		end
	end
end