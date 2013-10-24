class HomeController < ApplicationController
  
  def index
    @univrankings = Univranking.where(:status => "1").order("score DESC").limit(10)
    render :layout => false
  end
end
