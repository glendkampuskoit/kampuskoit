class HomeController < ApplicationController
  
  def index
  	subscriber = current_subscriber
	if subscriber
    survey = SurveyAlumni.find_by_subscriber_id(subscriber.id) if subscriber
    flash[:survey] = true if !survey 
	end

  render :layout => false

  end
  
  def login

  end

  def signup
    
  end
end
