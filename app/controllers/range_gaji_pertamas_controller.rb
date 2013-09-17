class RangeGajiPertamasController < ApplicationController
	load_and_authorize_resource if Rails.env.development? || Rails.env.production?
	layout "admin"

	def index
		@range_gaji_pertamas = RangeGajiPertama.all
	end

	def new
		@range_gaji_pertama = RangeGajiPertama.new
	end

	def create
		@range_gaji_pertama = RangeGajiPertama.new(params[:range_gaji_pertama])
		if @range_gaji_pertama.save
			redirect_to range_gaji_pertamas_path, notice: 'Range Gaji Pertama berhasil ditambah'
		else
			render action: "new"
		end
	end

	def edit
		@range_gaji_pertama = RangeGajiPertama.find(params[:id])
	end

	def update
		@range_gaji_pertama = RangeGajiPertama.find(params[:id])
  	if @range_gaji_pertama.update_attributes(params[:range_gaji_pertama])
      redirect_to range_gaji_pertamas_path, notice: 'Range gaji pertama berhasil dirubah.' 
  	else
  		render action: "edit"
  	end
	end
end
