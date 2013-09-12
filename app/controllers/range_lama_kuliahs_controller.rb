class RangeLamaKuliahsController < ApplicationController
	load_and_authorize_resource if Rails.env.development? || Rails.env.production?
	layout "admin"

	def index
		@range_lama_kuliahs = RangeLamaKuliah.all
	end

	def new
		@range_lama_kuliah = RangeLamaKuliah.new
	end

	def create
		@range_lama_kuliah = RangeLamaKuliah.new(params[:range_lama_kuliah])
		if @range_lama_kuliah.save
      		redirect_to range_lama_kuliahs_path, notice: 'Range lama kuliah berhasil ditambah' 
    	else
    		render action: "new"
    	end
	end

	def edit
		@range_lama_kuliah = RangeLamaKuliah.find(params[:id])
	end

	def update
		@range_lama_kuliah = RangeLamaKuliah.find(params[:id])
		if @range_lama_kuliah.update_attributes(params[:range_lama_kuliah])
			redirect_to range_lama_kuliahs_path, notice: 'Range lama kuliah berhasil dirubah.'
		else	
			render action "edit"
		end
	end
end
