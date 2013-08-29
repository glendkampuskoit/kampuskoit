class UnivprestasisController < ApplicationController
	layout "admin"

	def index
		@univ = Univ.find(params[:univ_id])
		@univprestasis = Univprestasi.where(univ_id: @univ)
	end

	def new
		@univ = Univ.find(params[:univ_id])
		@url = univ_univprestasis_path(@univ)
		@univprestasi = Univprestasi.new
	end

	def create
		@univprestasi = Univprestasi.new(params[:univprestasi])
		if @univprestasi.save
      		redirect_to univ_univprestasis_path(@univprestasi.univ), notice: 'Prestasi Perguruan Tinggi Berhasil ditambah.' 
    	else
    		render action: "new"
    	end	
	end

	def edit
		@univprestasi = Univprestasi.find(params[:id])
		@url = univ_univprestasi_path(@univprestasi.univ, @univprestasi)
		@univ = Univ.find(params[:univ_id])
	end

	def update
		@univprestasi = Univprestasi.find(params[:id])
    	if @univprestasi.update_attributes(params[:univprestasi])
      		redirect_to univ_univprestasis_path(@univprestasi.univ), notice: 'Prestasi Perguruan tinggi berhasil diubah.' 
    	else
      		render action: "edit"
    	end
	end
end

