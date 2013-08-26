class ProdiBiayasController < ApplicationController
	layout "admin"

	def index
		@prodi = Prodi.find(params[:prodi_id])
		@prodi_biayas = ProdiBiaya.where(prodi_id: @prodi)
	end

	def new
		@prodi_biaya = ProdiBiaya.new
		@prodi = Prodi.find(params[:prodi_id])
		@url = univ_prodi_prodi_biayas_path(@prodi.univ, @prodi)
	end

	def create
		@prodi_biaya = ProdiBiaya.new(params[:prodi_biaya])
    if @prodi_biaya.save
      redirect_to univ_prodi_prodi_biayas_path(@prodi_biaya.prodi.univ, @prodi_biaya.prodi), notice: 'Biaya Program Studi berhasil ditambah.' 
    else
    	@prodi = Prodi.find(params[:prodi_id])
    	@url = univ_prodi_prodi_biayas_path(@prodi_biaya.prodi.univ, @prodi_biaya.prodi)
      render action: "new"
    end 
	end

	def edit
		@prodi_biaya = ProdiBiaya.find(params[:id])
		@prodi = Prodi.find(params[:prodi_id])
		@url = univ_prodi_prodi_biaya_path(@prodi_biaya.prodi.univ, @prodi_biaya.prodi, @prodi_biaya)
	end

	def update
		@prodi_biaya = ProdiBiaya.find(params[:id])
		if @prodi_biaya.update_attributes(params[:prodi_biaya])
      redirect_to univ_prodi_prodi_biayas_path(@prodi_biaya.prodi.univ, @prodi_biaya.prodi), notice: 'Biaya Program Studi berhasil diupdate.' 
    else
    	@prodi = Prodi.find(params[:prodi_id])
			@url = univ_prodi_prodi_biaya_path(@prodi_biaya.prodi.univ, @prodi_biaya.prodi, @prodi_biaya)
    	render action: "edit"
    end
	end

	def destroy
		@prodi_biaya = ProdiBiaya.find(params[:id])
    @prodi_biaya.destroy
    redirect_to univ_prodi_prodi_biayas_path(@prodi_biaya.prodi.univ, @prodi_biaya.prodi, @prodi_biaya), notice: 'Biaya Program Studi berhasil dihapus.' 
	end
end