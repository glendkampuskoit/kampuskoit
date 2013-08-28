class UnivbeasiswasController < ApplicationController
	layout "admin"

	def index
		@univ = Univ.find(params[:univ_id])
		@univbeasiswas = Univbeasiswa.where(univ_id: @univ)
	end

	def new
		@univ = Univ.find(params[:univ_id])
		@url  = univ_univbeasiswas_path(@univ)
		@univbeasiswa = Univbeasiswa.new
	end

	def create
		@univbeasiswa = Univbeasiswa.new(params[:univbeasiswa])
		if @univbeasiswa.save
      		redirect_to univ_univbeasiswas_path(@univbeasiswa.univ), notice: 'Beasiswa Perguruan Tinggi Berhasil ditambah.' 
    	else
    		render action: "new"
    	end	
	end

	def edit
		@univbeasiswa = Univbeasiswa.find(params[:id])
		@url = univ_univbeasiswa_path(@univbeasiswa.univ, @univbeasiswa)
		@univ = Univ.find(params[:univ_id])
	end

	def update
		@univbeasiswa = Univbeasiswa.find(params[:id])
    	if @univbeasiswa.update_attributes(params[:univbeasiswa])
      		redirect_to univ_univbeasiswas_path(@univbeasiswa.univ), notice: 'Biaya Perguruan tinggi berhasil diubah.' 
    	else
      		render action: "edit"
      	end		
	end
end
