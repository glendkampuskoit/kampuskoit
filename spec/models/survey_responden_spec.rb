require 'spec_helper'

describe SurveyResponden do

	before{
		@surveyresponden = SurveyResponden.new(
				univ: FactoryGirl.create(:univ),
				subscriber: FactoryGirl.create(:subscriber),
				range_gaji_id: '1',
				range_bidang_kerja_id: '2',
				range_waktu_tunggu_id: '3',
				range_lama_kuliah_id: '1',
				range_ipk_id: '1',
				range_pekerjaan_pertama_id: '1',
				range_profesi_id: '1',
				range_pendidikan_terakhir_id: '1',
				range_gaji_pertama_id: '1',
				range_level_karir_id: '1'
			)

	}

	subject{@surveyresponden}

	it { should respond_to(:univ)}
	it { should respond_to(:subscriber)}

    it { should respond_to(:range_gaji_id)}
    it { should respond_to(:range_bidang_kerja_id)}
    it { should respond_to(:range_waktu_tunggu_id)}
	it { should respond_to(:range_lama_kuliah_id)}
	it { should respond_to(:range_ipk_id)}
	it { should respond_to(:range_pekerjaan_pertama_id)}
	it { should respond_to(:range_profesi_id)}
	it { should respond_to(:range_pendidikan_terakhir_id)}
	it { should respond_to(:range_gaji_pertama_id)}
	it { should respond_to(:range_level_karir_id)}

	describe 'should valid' do
	  	it { should be_valid }
	end

#	describe 'When univ blank is not valid' do
# 		before { @surveyresponden.univ = '' }
#		it { should_not be_valid }
# 	end

#	describe 'When subscriber blank is not valid' do
# 		before { @surveyresponden.subscriber = '' }
#		it { should_not be_valid }
# 	end

	describe 'When gaji blank is not valid' do
 		before { @surveyresponden.range_gaji_id = '' }
		it { should_not be_valid }
 	end

	describe 'When bidang_kerja blank is not valid' do
 		before { @surveyresponden.range_bidang_kerja_id = '' }
		it { should_not be_valid }
 	end

 	describe 'When waktu_tunggu blank is not valid' do
 		before { @surveyresponden.range_waktu_tunggu_id = '' }
		it { should_not be_valid }
 	end

 	describe 'When lama_kuliah blank is not valid' do
 		before { @surveyresponden.range_bidang_kerja_id = '' }
		it { should_not be_valid }
 	end

 	describe 'When ipk blank is not valid' do
 		before { @surveyresponden.range_ipk_id = '' }
		it { should_not be_valid }
 	end

 	describe 'When pekerjaan_pertama blank is not valid' do
 		before { @surveyresponden.range_pekerjaan_pertama_id = '' }
		it { should_not be_valid }
 	end

 	describe 'When profesi blank is not valid' do
 		before { @surveyresponden.range_profesi_id = '' }
		it { should_not be_valid }
 	end

 	describe 'When pendidikan_terakhir blank is not valid' do
 		before { @surveyresponden.range_pendidikan_terakhir_id = '' }
		it { should_not be_valid }
 	end

 	describe 'When gaji_pertama blank is not valid' do
 		before { @surveyresponden.range_gaji_pertama_id = '' }
		it { should_not be_valid }
 	end

 	describe 'When level_karir blank is not valid' do
 		before { @surveyresponden.range_level_karir_id = '' }
		it { should_not be_valid }
 	end

end
