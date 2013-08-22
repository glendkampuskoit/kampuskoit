class ProdiFasilitasGalleriesController < ApplicationController
  def create
  	@prodi_fasilitas_gallery = ProdiFasilitasGallery.new(params[:prodi_fasilitas_gallery])

  	prodi_fasil = ProdiFasil.find(@prodi_fasilitas_gallery.prodi_fasil_id)

  	if @prodi_fasilitas_gallery.save
    	redirect_to edit_univ_prodi_prodi_fasil_path(prodi_fasil.prodi.univ, prodi_fasil.prodi, prodi_fasil), notice: 'Galeri Fasilitas Program Studi berhasil diupdate.'
    else
      redirect_to edit_univ_prodi_prodi_fasil_path(prodi_fasil.prodi.univ, prodi_fasil.prodi, prodi_fasil), notice: 'Galeri Fasilitas Program Studi Gagal diupdate.'
    end  	
  end

  def destroy
  	@prodi_fasilitas_gallery = ProdiFasilitasGallery.find(params[:id])
    @prodi_fasilitas_gallery.destroy
    prodi_fasil = ProdiFasil.find(@prodi_fasilitas_gallery.prodi_fasil_id)
    redirect_to edit_univ_prodi_prodi_fasil_path(prodi_fasil.prodi.univ, prodi_fasil.prodi, prodi_fasil), notice: 'Galeri Fasilitas Fasilitas Program Studi berhasil diupdate.'
  end
end