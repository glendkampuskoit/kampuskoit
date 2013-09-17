class RangeProfesisController < ApplicationController
	load_and_authorize_resource if Rails.env.development? || Rails.env.production?
	layout "admin"

	def index
		@range_profesis = RangeProfesi.all
	end

	def new
		@range_profesi = RangeProfesi.new
	end

	def create
		@range_profesi = RangeProfesi.new(params[:range_profesi])
		if @range_profesi.save
    	redirect_to range_profesis_path, notice: 'Range Profesi berhasil ditambah' 
  	else
  		render action: "new"
  	end
	end

	def edit
		@range_profesi = RangeProfesi.find(params[:id])
	end

	def update
		@range_profesi = RangeProfesi.find(params[:id])
		if @range_profesi.update_attributes(params[:range_profesi])
			redirect_to range_profesis_path, notice: 'Range Profesi berhasil dirubah.'
		else
			render action "edit"
		end
	end
end