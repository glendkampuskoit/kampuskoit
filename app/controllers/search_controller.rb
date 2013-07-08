class SearchController < ApplicationController
  
  def result

  	#dammit this weird
  	#@prodis = Prodi.search params[:keyword_prodi], :page => params[:prodi_page], :per_page => 10
  	@prodis = Prodi.search params[:keyword], :page => params[:prodi_page], :per_page => 10
    @univs = Univ.search params[:keyword], :page => params[:pt_page], :per_page => 10
   
  end

end

