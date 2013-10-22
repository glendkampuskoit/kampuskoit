require 'spec_helper'

describe SurveyResponden do

	before{
		prodi = FactoryGirl.create(:prodi)
		@survey_responden = SurveyResponden.new(
			prodi: prodi,
			univ: prodi.univ,
			subscriber: FactoryGirl.create(:subscriber),
			range_gaji_id: FactoryGirl.create(:range_gaji),
			range_bidang_kerja_id: FactoryGirl.create(:range_bidang_kerja),
			range_waktu_tunggu_id:  FactoryGirl.create(:range_waktu_tunggu),
			range_lama_kuliah_id:  FactoryGirl.create(:range_lama_kuliah),
			range_ipk_id:  FactoryGirl.create(:range_ipk),
			range_pekerjaan_pertama_id:  FactoryGirl.create(:range_pekerjaan_pertama),
			range_profesi_id:  FactoryGirl.create(:range_profesi),
			range_pendidikan_terakhir_id:  FactoryGirl.create(:range_pendidikan_terakhir),
			range_gaji_pertama_id:  FactoryGirl.create(:range_gaji_pertama),
			range_level_karir_id:  FactoryGirl.create(:range_level_karir),
			usia: 35,
			tahun_lulus: 2005,
			jenis_kelamin: 1,
			alamat: "Gubeng Kertajaya VI no 6 Surabaya",
			sertifikasi_professional: 1
			)
	}

	subject{ @survey_responden }

	it { should be_valid }

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


#	describe 'When univ blank is not valid' do
# 		before { @survey_responden.univ = '' }
#		it { should_not be_valid }
# 	end

#	describe 'When subscriber blank is not valid' do
# 		before { @survey_responden.subscriber = '' }
#		it { should_not be_valid }
# 	end

	describe 'When gaji blank' do
 		before { @survey_responden.range_gaji_id = '' }
		it { should_not be_valid }
 	end

	describe 'When bidang_kerja blank' do
 		before { @survey_responden.range_bidang_kerja_id = '' }
		it { should_not be_valid }
 	end

 	describe 'When waktu_tunggu blank' do
 		before { @survey_responden.range_waktu_tunggu_id = '' }
		it { should_not be_valid }
 	end

 	describe 'When lama_kuliah blank' do
 		before { @survey_responden.range_bidang_kerja_id = '' }
		it { should_not be_valid }
 	end

 	describe 'When ipk blank' do
 		before { @survey_responden.range_ipk_id = '' }
		it { should_not be_valid }
 	end

 	describe 'When pekerjaan_pertama blank' do
 		before { @survey_responden.range_pekerjaan_pertama_id = '' }
		it { should_not be_valid }
 	end

 	describe 'When profesi blank' do
 		before { @survey_responden.range_profesi_id = '' }
		it { should_not be_valid }
 	end

 	describe 'When pendidikan_terakhir blank' do
 		before { @survey_responden.range_pendidikan_terakhir_id = '' }
		it { should_not be_valid }
 	end

 	describe 'When gaji_pertama blank' do
 		before { @survey_responden.range_gaji_pertama_id = '' }
		it { should_not be_valid }
 	end

 	describe 'When level_karir blank' do
 		before { @survey_responden.range_level_karir_id = '' }
		it { should_not be_valid }
 	end

 	describe 'When sertifikasi_professional blank' do
 		before { @survey_responden.sertifikasi_professional = '' }
		it { should_not be_valid }
 	end

 	describe 'When univ_id blank' do
 		before { @survey_responden.univ_id = '' }
		it { should_not be_valid }
 	end

 	describe 'When prodi_id blank' do
 		before { @survey_responden.prodi_id = '' }
		it { should_not be_valid }
 	end

 	describe 'When usia blank' do
 		before { @survey_responden.usia = '' }
		it { should_not be_valid }
 	end

 	describe 'When alamat blank' do
 		before { @survey_responden.alamat = '' }
		it { should_not be_valid }
 	end

 	describe 'When jenis_kelamin blank' do
 		before { @survey_responden.jenis_kelamin = '' }
		it { should_not be_valid }
 	end

 	describe 'When tahun_lulus blank' do
 		before { @survey_responden.tahun_lulus = '' }
		it { should_not be_valid }
 	end

 	describe "tahun lulus must be an integer with length is 4" do
 		before { @survey_responden.tahun_lulus = '2' * 5 }
		it { should_not be_valid }
 	end
end