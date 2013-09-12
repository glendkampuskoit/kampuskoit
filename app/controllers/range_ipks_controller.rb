class RangeIpksController < ApplicationController
	load_and_authorize_resource if Rails.env.development? || Rails.env.production?
	layout "admin"

	def index
		@range_ipks = RangeIpk.all
	end

	def new
		@range_ipk = RangeIpk.new
	end

	def create
		@range_ipk = RangeIpk.new(params[:range_ipk])
		if @range_ipk.save
      		redirect_to range_ipks_path, notice: 'Range Waktu Tunggu berhasil ditambah' 
    	else
    		render action: "new"
    	end
	end

	def edit
		@range_ipk = RangeIpk.find(params[:id])
	end

	def update
		@range_ipk = RangeIpk.find(params[:id])
		if @range_ipk.update_attributes(params[:range_ipk])
			redirect_to range_ipks_path, notice: 'Range waktu tunggu berhasil dirubah.'
		else	
			render action "edit"
		end
	end
end
