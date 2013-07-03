class UnivgalleriesController < ApplicationController
  def create
  	@univgallery = Univgallery.new(params[:univgallery])

    if @univgallery.save
    	redirect_to edit_univ_path(Univ.find(@univgallery.univ_id)), notice: 'Galeri Perguruan tinggi berhasil diupdate.'
    else
      redirect_to edit_univ_path(Univ.find(@univgallery.univ_id)), notice: 'Galeri Perguruan tinggi gagal diupdate.'
    end  	
  end

  def destroy
  	@univgallery = Univgallery.find(params[:id])
    @univgallery.destroy
    redirect_to edit_univ_path(Univ.find(@univgallery.univ_id)), notice: 'Galeri Perguruan tinggi berhasil diupdate.'
  end
end
