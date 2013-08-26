class UnivfasilitasesController < ApplicationController
	layout "admin"

	def index
		@univ = Univ.find(params[:univ_id])
		@univ_fasilitases = Univfasilitas.where(univ_id: @univ)
		@univfasilitas = Univfasilitas.new
	end

	def create
		@univ = Univ.find(params[:univ_id])
		@univ_fasilitas_save = Univfasilitas.new(params[:univfasilitas])
		@univ_fasilitases = Univfasilitas.where(univ_id: @univ)
		@univfasilitas = Univfasilitas.new		
		
		if @univ_fasilitas_save.save			
      redirect_to edit_univ_univfasilitas_path(@univ, @univ_fasilitas_save), notice: 'Fasilitas Perguruan Tinggi berhasil ditambah.' 
    else
    	render action: "index"
    end
	end

	def edit
		@univfasilitas = Univfasilitas.find(params[:id])
		@univ_fasilitas_gallery = UnivFasilitasGallery.new
    @univ_fasilitas_galleries = UnivFasilitasGallery.where(univfasilitas_id: @univfasilitas)
	end

	def update
    @univfasilitas_save = Univfasilitas.find(params[:id])
    @univ_fasilitases = Univfasilitas.where(univ_id: @univfasilitas_save.univ.id)
		@univ = Univ.find(params[:univ_id])

    if @univfasilitas_save.update_attributes(params[:univfasilitas])
      #redirect_to prodis_list_path, notice: 'Program Studi berhasil diupdate.' 
      @univ_fasilitas = Univfasilitas.new
      redirect_to edit_univ_univfasilitas_path(@univfasilitas_save.univ, @univfasilitas_save), notice: 'Fasilitas Perguruan Tinggi berhasil diupdate.' 
    else
    	@univfasilitas = @univfasilitas_save
      @univ_fasilitas_gallery = UnivFasilitasGallery.new
    	@univ_fasilitas_galleries = UnivFasilitasGallery.where(univfasilitas_id: @univfasilitas)
    	render action: "edit"
    end
  end 

  def destroy
    @univfasilitas = Univfasilitas.find(params[:id])
    @univfasilitas.destroy
    redirect_to univ_univfasilitases_path(@univfasilitas.univ, @univfasilitas), notice: 'Fasilitas Perguruan Tinggi berhasil dihapus.' 
  end
end
