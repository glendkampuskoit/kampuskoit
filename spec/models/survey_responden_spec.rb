require 'spec_helper'

describe SurveyResponden do

pending "model" do 
	before{
		@surveyresponden = SurveyResponden.new(
				univ: FactoryGirl.create(:univ),
				subscriber: FactoryGirl.create(:subscriber),
				gaji: '1',
				bidang_kerja: '2',
				waktu_tunggu: '3',
				lama_kuliah: '1',
				ipk: '1',
				pekerjaan_pertama: '1',
				profesi: '1',
				pendidikan_terakhir: '1',
				gaji_pertama: '1',
				level_karir: '1',
			)

	}

	subject{@surveyresponden}

	it { should respond_to(:univ)}
	it { should respond_to(:subscriber)}

    it { should respond_to(:gaji)}
    it { should respond_to(:bidang_kerja)}
    it { should respond_to(:waktu_tunggu)}
	it { should respond_to(:lama_kuliah)}
	it { should respond_to(:ipk)}
	it { should respond_to(:pekerjaan_pertama)}
	it { should respond_to(:profesi)}
	it { should respond_to(:pendidikan_terakhir)}
	it { should respond_to(:gaji_pertama)}
	it { should respond_to(:level_karir)}

	describe "should valid" do
	  	it { should be_valid }
	end

	describe "When univ blank is not valid" do
 		before { @surveyresponden.univ = '' }
		it { should_not be_valid }
 	end

	describe "When subscriber blank is not valid" do
 		before { @surveyresponden.subscriber = '' }
		it { should_not be_valid }
 	end

	describe "When gaji blank is not valid" do
 		before { @surveyresponden.gaji = '' }
		it { should_not be_valid }
 	end

	describe "When bidang_kerja blank is not valid" do
 		before { @surveyresponden.bidang_kerja = '' }
		it { should_not be_valid }
 	end

 	describe "When waktu_tunggu blank is not valid" do
 		before { @surveyresponden.waktu_tunggu = '' }
		it { should_not be_valid }
 	end

 	describe "When lama_kuliah blank is not valid" do
 		before { @surveyresponden.bidang_kerja = '' }
		it { should_not be_valid }
 	end

 	describe "When ipk blank is not valid" do
 		before { @surveyresponden.ipk = '' }
		it { should_not be_valid }
 	end

 	describe "When pekerjaan_pertama blank is not valid" do
 		before { @surveyresponden.pekerjaan_pertama = '' }
		it { should_not be_valid }
 	end

 	describe "When profesi blank is not valid" do
 		before { @surveyresponden.profesi = '' }
		it { should_not be_valid }
 	end

 	describe "When pendidikan_terakhir blank is not valid" do
 		before { @surveyresponden.pendidikan_terakhir = '' }
		it { should_not be_valid }
 	end

 	describe "When gaji_pertama blank is not valid" do
 		before { @surveyresponden.gaji_pertama = '' }
		it { should_not be_valid }
 	end

 	describe "When level_karir blank is not valid" do
 		before { @surveyresponden.level_karir = '' }
		it { should_not be_valid }
 	end

end
end