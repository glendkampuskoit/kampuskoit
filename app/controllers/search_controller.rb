class SearchController < ApplicationController
  
  def result

  	#dammit this weird
  	#@prodis = Prodi.search params[:keyword_prodi], :page => params[:prodi_page], :per_page => 10
  	params[:att] = 'univ' unless params[:att]
  	
  	@params_value = params
		
  	if params[:att] == 'prodi'
  		@provinsis = Provinsi.all
    	@jenjang_prodis = JenjangProdi.all
  		@prodis = Prodi.search params[:keyword], :page => params[:page], :per_page => 10 
  		render :template => 'search/prodi_result'
  	else params[:att] == 'univ'
  		@provinsis = Provinsi.order("provinsi ASC")
    	@jenis_pts = JenisPt.order("jenis ASC")
  		@univs = Univ.search params[:keyword], :page => params[:page], :per_page => 10 
  		render :template => 'search/univ_result'
  	end
  end
end