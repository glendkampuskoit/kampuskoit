class JenisPtsController < ApplicationController
	load_and_authorize_resource if Rails.env.development? || Rails.env.production?
	
	layout 'admin'
	
	def index
		@jenis_pts = JenisPt.all
	end

	def new
		@jenis_pt = JenisPt.new
	end

	def create
		@jenis_pt = JenisPt.new(params[:jenis_pt])
		if @jenis_pt.save
      redirect_to jenis_pts_path, notice: 'Jenis Perguruan Tinggi was successfully created.' 
    else
    	render action: "new"
    end	
	end

	def edit
		@jenis_pt = JenisPt.find(params[:id])
	end

	def update
		@jenis_pt = JenisPt.find(params[:id])
		if @jenis_pt.update_attributes(params[:jenis_pt])
      redirect_to jenis_pts_path, notice: 'Jenis Perguruan Tinggi was successfully updated.' 
    else
    	render action: "edit"
    end
	end

	def destroy
		@jenis_pt = JenisPt.find(params[:id])
    @jenis_pt.destroy
    redirect_to jenis_pts_path
	end
end
