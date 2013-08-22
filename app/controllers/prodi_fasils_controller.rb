class ProdiFasilsController < ApplicationController
	layout "admin"

	def index
		@prodi = Prodi.find(params[:prodi_id])
		@prodi_fasils = ProdiFasil.where(prodi_id: @prodi.id)
		@prodi_fasil = ProdiFasil.new		
	end

	def create
		@prodi = Prodi.find(params[:prodi_id])
		@prodi_fasil_save = ProdiFasil.new(params[:prodi_fasil])
		@prodi_fasils = ProdiFasil.where(prodi_id: @prodi.id)
		@prodi_fasil = ProdiFasil.new		
		
		if @prodi_fasil_save.save			
      redirect_to edit_univ_prodi_prodi_fasil_path(@prodi_fasil_save.prodi, @prodi_fasil_save.prodi, @prodi_fasil_save), notice: 'Fasilitas Prodi berhasil ditambah.' 
    else
    	render action: "index"
    end
	end

	def edit
		@prodi_fasil = ProdiFasil.find(params[:id])
		@prodi_fasil_gallery = ProdiFasilitasGallery.new
    @prodi_fasil_galleries = ProdiFasilitasGallery.where(prodi_fasil_id: @prodi_fasil)
	end

	def update
    @prodi_fasil_save = ProdiFasil.find(params[:id])
    @prodi_fasils = ProdiFasil.where(prodi_id: @prodi_fasil_save.prodi.id)
		@prodi_fasil = ProdiFasil.new
		@prodi = Prodi.find(params[:prodi_id])

    if @prodi_fasil_save.update_attributes(params[:prodi_fasil])
      #redirect_to prodis_list_path, notice: 'Program Studi berhasil diupdate.' 
      redirect_to edit_univ_prodi_prodi_fasil_path(@prodi_fasil_save.prodi, @prodi_fasil_save.prodi, @prodi_fasil_save), notice: 'Fasilitas Prodi berhasil diupdate.' 
    else
      @prodi_fasil_gallery = ProdiFasilitasGallery.new
    	@prodi_fasil_galleries = ProdiFasilitasGallery.where(prodi_fasil_id: @prodi_fasil)
    end   
  end 
end