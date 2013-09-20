require 'spec_helper'

describe 'Survey Responden' do 
	subject { Page }

	describe "go to Index page" do 
		before { visit survey_respondens_path}

    	it "should go to right page with title Kuisioner survey alumni" do
      		should have_selector('title', :text => "Kuisioner Survey Alumni")
    	end
	end
	
	describe "add new record" do
		before do 
			visit new_survey_responden_path
		end

		it " Index page should have right title Lembar isian kusioner" do
			should have_selector('title', :text => "Lembar isian kusioner" )
		end

		describe "fill with valid data" do
			before do
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