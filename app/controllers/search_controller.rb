class SearchController < ApplicationController
  def result
  	if params[:parameters] == 'univ'
  		redirect_to univs_path
  	end
  end
end
