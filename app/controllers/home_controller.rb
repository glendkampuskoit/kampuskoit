class HomeController < ApplicationController
  
  def index
  	subscriber = current_subscriber
  	survey = SurveyAlumni.find_by_subscriber_id(subscriber.id)
  	flash[:survey] = true 

  end
  
  def login

  end

  def signup
    
  end
end