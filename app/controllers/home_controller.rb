class HomeController < ApplicationController
  def index
  	@univs = Univ.all
    @prodis = Prodi.all
  	respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def login

  end

  def signup
    
  end
end