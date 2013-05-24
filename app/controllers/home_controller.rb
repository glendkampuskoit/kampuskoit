class HomeController < ApplicationController
  
  def index
  	subscriber = current_subscriber
  	survey = SurveyAlumni.find_by_subscriber_id(subscriber.id)
  	flash[:survey] = true if survey 

  end
  
  def login

  end

  def signup
    
  end
end