class RangeLevelKarirsController < ApplicationController
	load_and_authorize_resource if Rails.env.development? || Rails.env.production?
	layout "admin"

	def index
		@range_level_karirs = RangeLevelKarir.all
	end

	def new
		@range_level_karir = RangeLevelKarir.new
	end

	def create
		@range_level_karir = RangeLevelKarir.new(params[:range_level_karir])
		if @range_level_karir.save
      		redirect_to range_level_karirs_path, notice: 'Range level Karir berhasil ditambah' 
    	else
    		render action: "new"
    	end
	end

	def edit
		@range_level_karir = RangeLevelKarir.find(params[:id])
	end

	def update
		@range_level_karir = RangeLevelKarir.find(params[:id])
		if @range_level_karir.update_attributes(params[:range_level_karir])
			redirect_to range_level_karirs_path, notice: 'Range lvel karir berhasil dirubah.'
		else	
			render action "edit"
		end
	end
end
