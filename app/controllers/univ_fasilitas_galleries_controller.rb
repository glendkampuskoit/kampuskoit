class UnivFasilitasGalleriesController < ApplicationController

	def create
  	@univ_fasilitas_gallery = UnivFasilitasGallery.new(params[:univ_fasilitas_gallery])

  	univ_fasilitas = Univfasilitas.find(@univ_fasilitas_gallery.univ_fasilitas_id)

  	if @univ_fasilitas_gallery.save
    	redirect_to edit_univ_univfasilitas_path(univ_fasilitas.univ, univ_fasilitas), notice: 'Galeri Fasilitas Perguruan Tinggi berhasil diupdate.'
    else
      redirect_to edit_univ_univfasilitas_path(univ_fasilitas.univ, univ_fasilitas), notice: 'Galeri Fasilitas Perguruan Tinggi Gagal diupdate.'
    end  	
  end

  def destroy
  	@univ_fasilitas_gallery = UnivFasilitasGallery.find(params[:id])
    @univ_fasilitas_gallery.destroy
    univ_fasilitas = Univfasilitas.find(@univ_fasilitas_gallery.univ_fasilitas_id)
    redirect_to edit_univ_univfasilitas_path(univ_fasilitas.univ, univ_fasilitas), notice: 'Galeri Fasilitas Fasilitas Perguruan Tinggi berhasil diupdate.'
  end
end