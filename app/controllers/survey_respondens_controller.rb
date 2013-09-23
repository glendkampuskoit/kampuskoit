class SurveyRespondensController < ApplicationController

	def index
		@survey_respondens = SurveyResponden.all
	end

	def new
		@survey_responden = SurveyResponden.new
		@range_gajis = RangeGaji.all
		@range_bidang_kerjas = RangeBidangKerja.all
		@range_waktu_tunggus = RangeWaktuTunggu.all
		@range_lama_kuliahs = RangeLamaKuliah.all
		@range_ipks	= RangeIpk.all
		@range_pekerjaan_pertamas = RangePekerjaanPertama.all
		@range_profesis = RangeProfesi.all
		@range_pendidikan_terakhirs = RangePendidikanTerakhir.all
		@range_gaji_pertamas = RangeGajiPertama.all
		@range_level_karirs = RangeLevelKarir.all
	end

	def create
		@survey_responden = SurveyResponden.new(params[:survey_responden])
		@range_gajis = RangeGaji.all
		@range_bidang_kerjas = RangeBidangKerja.all
		@range_waktu_tunggus = RangeWaktuTunggu.all
		@range_lama_kuliahs = RangeLamaKuliah.all
		@range_ipks	= RangeIpk.all
		@range_pekerjaan_pertamas = RangePekerjaanPertama.all
		@range_profesis = RangeProfesi.all
		@range_pendidikan_terakhirs = RangePendidikanTerakhir.all
		@range_gaji_pertamas = RangeGajiPertama.all
		@range_level_karirs = RangeLevelKarir.all

		if @survey_responden.save
			redirect_to posts_path, :notice => "Terimakasih telah mengisi survey"
		else
			render action: "new"
		end
	end
end
