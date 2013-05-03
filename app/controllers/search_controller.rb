class SearchController < ApplicationController
  
  def result

    @univs = Univ.search params[:keyword_all], :page => params[:pt_page], :per_page => 10
    @prodis = Prodi.search params[:keyword_all], :page => params[:prodi_page], :per_page => 10

  end

end

