class RangeBidangKerjasController < ApplicationController
	load_and_authorize_resource if Rails.env.development? || Rails.env.production?
	layout "admin"

	def index
		@range_bidang_kerjas = RangeBidangKerja.all
	end

	def new
		@range_bidang_kerja = RangeBidangKerja.new
	end

	def create
		@range_bidang_kerja = RangeBidangKerja.new(params[:range_bidang_kerja])
		if @range_bidang_kerja.save
			redirect_to range_bidang_kerjas_path, notice: 'Range bidang kerja berhasil ditambah'
		else
			render action: "new"
		end
	end

	def edit
		@range_bidang_kerja = RangeBidangKerja.find(params[:id])
	end

	def update
		@range_bidang_kerja = RangeBidangKerja.find(params[:id])
    	if @range_bidang_kerja.update_attributes(params[:range_bidang_kerja])
	      redirect_to range_bidang_kerjas_path, notice: 'Range bidang kerja berhasil dirubah.' 
    	else
      		render action: "edit"
    	end
	end

end
