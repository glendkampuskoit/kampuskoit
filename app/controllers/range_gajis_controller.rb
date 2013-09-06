class RangeGajisController < ApplicationController
	load_and_authorize_resource if Rails.env.development? || Rails.env.production?
	layout "admin"

	def index
		@rangegajis = RangeGaji.all
	end

	def new
		@rangegaji = RangeGaji.new
	end
	
	def create
		@rangegaji = RangeGaji.new(params[:rangegaji])
		if @rangegaji.save
      		redirect_to range_gajis_path, notice: 'Range gaji berhasil ditambah' 
    	else
    		render action: "new"
    	end
	end

	def edit
		@rangegaji = RangeGaji.find(params[:id])
	end

	def update
		@rangegaji = RangeGaji.find(params[:id])
    	if @rangegaji.update_attributes(params[:rangegaji])
	      redirect_to provinsis_path, notice: 'Range gaji berhasil dirubah.' 
    	else
      		render action: "edit"
    	end
	end
end
