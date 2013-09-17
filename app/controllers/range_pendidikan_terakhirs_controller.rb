class RangePendidikanTerakhirsController < ApplicationController
	load_and_authorize_resource if Rails.env.development? || Rails.env.production?
	layout "admin"

	def index
		@range_pendidikan_terakhirs = RangePendidikanTerakhir.all
	end

	def new
		@range_pendidikan_terakhir = RangePendidikanTerakhir.new
	end

	def create
		@range_pendidikan_terakhir = RangePendidikanTerakhir.new(params[:range_pendidikan_terakhir])
		if @range_pendidikan_terakhir.save
    	redirect_to range_pendidikan_terakhirs_path, notice: 'Range Pendidikan Terakhir berhasil ditambah' 
  	else
  		render action: "new"
  	end
	end

	def edit
		@range_pendidikan_terakhir = RangePendidikanTerakhir.find(params[:id])
	end

	def update
		@range_pendidikan_terakhir = RangePendidikanTerakhir.find(params[:id])
		if @range_pendidikan_terakhir.update_attributes(params[:range_pendidikan_terakhir])
			redirect_to range_pendidikan_terakhirs_path, notice: 'Range Pendidikan Terakhir berhasil dirubah.'
		else	
			render action "edit"
		end
	end
end
