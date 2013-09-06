class RangeBidangKerjasController < ApplicationController
	load_and_authorize_resource if Rails.env.development? || Rails.env.production?
	layout "admin"

	def index
		@rangebidangkerjas = RangeBidangKerja.all
	end

	def new
		@rangebidangkerja= RangeBidangKerja.new
	end

	def create
		@rangebidangkerja= RangeBidangKerja.new(params[:rangebidangkerja] )
		if @rangebidangkerja.save
			redirect_to range_bidang_kerjas_path, notice: 'Range bidang kerja berhasil ditambah'
		else
			render action: "new"
		end
	end

	def edit
		@rangebidangkerja= RangeBidangKerja.find(params[:id])
	end

	def update
		@rangebidangkerja = RangeBidangKerja.find(params[:id])
    	if @rangebidangkerja.update_attributes(params[:rangebidangkerja])
	      redirect_to range_bidang_kerjas_path, notice: 'Range bidang kerja berhasil dirubah.' 
    	else
      		render action: "edit"
    	end
	end

end
