class RangeWaktuTunggusController < ApplicationController
	load_and_authorize_resource if Rails.env.development? || Rails.env.production?
	layout "admin"

	def index
		@range_waktu_tunggus = RangeWaktuTunggu.all
	end

	def new
		@range_waktu_tunggu = RangeWaktuTunggu.new
	end

	def create
		@range_waktu_tunggu = RangeWaktuTunggu.new(params[:range_waktu_tunggu])
		if @range_waktu_tunggu.save
      		redirect_to range_waktu_tunggus_path, notice: 'Range Waktu Tunggu berhasil ditambah' 
    	else
    		render action: "new"
    	end
	end

	def edit
		@range_waktu_tunggu = RangeWaktuTunggu.find(params[:id])
	end

	def update
		@range_waktu_tunggu = RangeWaktuTunggu.find(params[:id])
		if @range_waktu_tunggu.update_attributes(params[:range_waktu_tunggu])
			redirect_to range_waktu_tunggus_path, notice: 'Range waktu tunggu berhasil dirubah.'
		else	
			render action "edit"
		end
	end
end