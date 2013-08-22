class ProdiGalleriesController < ApplicationController
  def create
  	@prodigallery = ProdiGallery.new(params[:prodi_gallery])

  	prodi = Prodi.find(@prodigallery.prodi_id)

    if @prodigallery.save
    	redirect_to edit_univ_prodi_path(Univ.find(prodi.univ_id), prodi), notice: 'Galeri Program Studi berhasil diupdate.'
    else
      redirect_to edit_univ_prodi_path(Univ.find(prodi.univ_id), prodi), notice: 'Galeri Program Studi gagal diupdate.'
    end
  end

  def destroy
  	@prodigallery = ProdiGallery.find(params[:id])
    @prodigallery.destroy
    prodi = Prodi.find(@prodigallery.prodi_id)
    redirect_to edit_univ_prodi_path(Univ.find(prodi.univ_id), prodi), notice: 'Galeri Program Studi berhasil diupdate.'
  end
end
