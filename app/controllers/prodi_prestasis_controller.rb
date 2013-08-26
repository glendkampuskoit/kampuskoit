class ProdiPrestasisController < ApplicationController
	layout "admin"

	def index
		@prodi = Prodi.find(params[:prodi_id])
		@prodi_prestasis = ProdiPrestasi.where(prodi_id: @prodi)
		@prodi_prestasi = ProdiPrestasi.new
	end

	def create
		@prodi_prestasi_save = ProdiPrestasi.new(params[:prodi_prestasi])
		@prodi = Prodi.find(params[:prodi_id])
		@prodi_prestasis = ProdiPrestasi.where(prodi_id: @prodi)
		@prodi_prestasi = ProdiPrestasi.new

		if @prodi_prestasi_save.save
      redirect_to univ_prodi_prodi_prestasis_path(@prodi.univ, @prodi, @prodi_prestasi_save)
    else
    	render action: "index"
    end	
	end

	def edit
		@prodi = Prodi.find(params[:prodi_id])
		@prodi_prestasis = ProdiPrestasi.where(prodi_id: @prodi)
		@prodi_prestasi = ProdiPrestasi.find(params[:id])
		render action: "index"
	end

	def update
		@prodi = Prodi.find(params[:prodi_id])
		@prodi_prestasi_save = ProdiPrestasi.find(params[:id])
    @prodi_prestasis = ProdiPrestasi.where(prodi_id: @prodi)		

    if @prodi_prestasi_save.update_attributes(params[:prodi_prestasi])
      @prodi_prestasi = ProdiPrestasi.new
      redirect_to univ_prodi_prodi_prestasis_path(@prodi.univ, @prodi), notice: "Prestasi Program Studi Berhasil diupdate"
    else
    	@prodi_prestasi = @prodi_prestasi_save
    	render action: "index"
    end   
	end

	def destroy
    @prodi_prestasi = ProdiFasil.find(params[:id])
    @prodi_prestasi.destroy
    redirect_to univ_prodi_prodi_prestasis_path(@prodi_prestasi.prodi.univ, @prodi_prestasi.prodi, @prodi_prestasi), notice: 'Fasilitas Prodi berhasil dihapus.' 
  end
end
