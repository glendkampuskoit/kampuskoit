class HomeController < ApplicationController
  
  def index
    @provinsis = Provinsi.all

  end
  
  def login

  end

  def signup
    
  end
end