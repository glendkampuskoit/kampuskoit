class SearchController < ApplicationController
  def result
  	if params[:parameters] == 'univ'
  		redirect_to univs_path(:keyword => params[:keyword])
  	elsif params[:parameters] == 'jur'
  		redirect_to prodis_path(:keyword => params[:keyword])
  	elsif params[:parameters] == 'all'
  		@univs = Univ.search(params[:keyword])
  		@prodis = Prodi.search(params[:keyword])
  	end
  end
end
