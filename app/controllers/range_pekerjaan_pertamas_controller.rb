class RangePekerjaanPertamasController < ApplicationController
	load_and_authorize_resource if Rails.env.development? || Rails.env.production?
	layout "admin"

	def index
		@range_pekerjaan_pertamas = RangePekerjaanPertama.all
	end

	def new
		@range_pekerjaan_pertama = RangePekerjaanPertama.new
	end

	def create
		@range_pekerjaan_pertama = RangePekerjaanPertama.new(params[:range_pekerjaan_pertama])
		if @range_pekerjaan_pertama.save
      		redirect_to range_pekerjaan_pertamas_path, notice: 'Range level Karir berhasil ditambah' 
    	else
    		render action: "new"
    	end
	end

	def edit
		@range_pekerjaan_pertama = RangePekerjaanPertama.find(params[:id])
	end

	def update
		@range_pekerjaan_pertama = RangePekerjaanPertama.find(params[:id])
		if @range_pekerjaan_pertama.update_attributes(params[:range_pekerjaan_pertama])
			redirect_to range_pekerjaan_pertamas_path, notice: 'Range lvel karir berhasil dirubah.'
		else	
			render action "edit"
		end
	end
end
