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
	end
end
