class HomeController < ApplicationController
  
  def index
  #subscriber = current_subscriber
	#if subscriber
  #  survey = SurveyAlumni.find_by_subscriber_id(subscriber.id) if subscriber
  #  flash[:survey] = true if !survey 

  @univrankings = Univranking.where(:status => "1").order("score DESC").limit(10)
  render :layout => false

  end
  
  def login

  end

  def signup
    
  end
end
