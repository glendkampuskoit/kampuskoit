require 'spec_helper'

describe SurveyResponden do

	before{
		prodi = FactoryGirl.create(:prodi)
		@survey_responden = SurveyResponden.new(
			prodi: prodi,
			univ: prodi.univ,
			subscriber: FactoryGirl.create(:subscriber),
			range_gaji: FactoryGirl.create(:range_gaji),
			range_bidang_kerja: FactoryGirl.create(:range_bidang_kerja),
			range_waktu_tunggu:  FactoryGirl.create(:range_waktu_tunggu),
			range_lama_kuliah:  FactoryGirl.create(:range_lama_kuliah),
			range_ipk:  FactoryGirl.create(:range_ipk),
			range_pekerjaan_pertama:  FactoryGirl.create(:range_pekerjaan_pertama),
			range_profesi:  FactoryGirl.create(:range_profesi),
			range_pendidikan_terakhir:  FactoryGirl.create(:range_pendidikan_terakhir),
			range_gaji_pertama:  FactoryGirl.create(:range_gaji_pertama),
			range_level_karir:  FactoryGirl.create(:range_level_karir),
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
	it { should respond_to(:range_gaji)}
	it { should respond_to(:range_bidang_kerja)}
	it { should respond_to(:range_waktu_tunggu)}
	it { should respond_to(:range_lama_kuliah)}
	it { should respond_to(:range_ipk)}
	it { should respond_to(:range_pekerjaan_pertama)}
	it { should respond_to(:range_profesi)}
	it { should respond_to(:range_pendidikan_terakhir)}
	it { should respond_to(:range_gaji_pertama)}
	it { should respond_to(:range_level_karir)}


#	describe 'When univ blank is not valid' do
# 		before { @survey_responden.univ = '' }
#		it { should_not be_valid }
# 	end

#	describe 'When subscriber blank is not valid' do
# 		before { @survey_responden.subscriber = '' }
#		it { should_not be_valid }
# 	end

	describe 'When gaji blank' do
 		before { @survey_responden.range_gaji = nil }
		it { should_not be_valid }
 	end

	describe 'When bidang_kerja blank' do
 		before { @survey_responden.range_bidang_kerja = nil }
		it { should_not be_valid }
 	end

 	describe 'When waktu_tunggu blank' do
 		before { @survey_responden.range_waktu_tunggu = nil }
		it { should_not be_valid }
 	end

 	describe 'When lama_kuliah blank' do
 		before { @survey_responden.range_bidang_kerja = nil }
		it { should_not be_valid }
 	end

 	describe 'When ipk blank' do
 		before { @survey_responden.range_ipk = nil }
		it { should_not be_valid }
 	end

 	describe 'When pekerjaan_pertama blank' do
 		before { @survey_responden.range_pekerjaan_pertama = nil }
		it { should_not be_valid }
 	end

 	describe 'When profesi blank' do
 		before { @survey_responden.range_profesi = nil }
		it { should_not be_valid }
 	end

 	describe 'When pendidikan_terakhir blank' do
 		before { @survey_responden.range_pendidikan_terakhir = nil }
		it { should_not be_valid }
 	end

 	describe 'When gaji_pertama blank' do
 		before { @survey_responden.range_gaji_pertama = nil }
		it { should_not be_valid }
 	end

 	describe 'When level_karir blank' do
 		before { @survey_responden.range_level_karir = nil }
		it { should_not be_valid }
 	end

 	describe 'When sertifikasi_professional blank' do
 		before { @survey_responden.sertifikasi_professional = '' }
		it { should_not be_valid }
 	end

 	describe 'When univ blank' do
 		before { @survey_responden.univ = nil }
		it { should_not be_valid }
 	end

 	describe 'When prodi blank' do
 		before { @survey_responden.prodi = nil }
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