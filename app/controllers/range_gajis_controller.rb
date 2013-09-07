class RangeGajisController < ApplicationController
	load_and_authorize_resource if Rails.env.development? || Rails.env.production?
	layout "admin"

	def index
		@range_gajis = RangeGaji.all
	end

	def new
		@range_gaji = RangeGaji.new
	end
	
	def create
		@range_gaji = RangeGaji.new(params[:range_gaji])
		if @range_gaji.save
      		redirect_to range_gajis_path, notice: 'Range gaji berhasil ditambah' 
    	else
    		render action: "new"
    	end
	end

	def edit
		@range_gaji = RangeGaji.find(params[:id])
	end

	def update
		@range_gaji = RangeGaji.find(params[:id])
    	if @range_gaji.update_attributes(params[:range_gaji])
	      redirect_to provinsis_path, notice: 'Range gaji berhasil dirubah.' 
    	else
      		render action: "edit"
    	end
	end
end
