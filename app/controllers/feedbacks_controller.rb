class FeedbacksController < ApplicationController
	def create
		@feedback = Feedback.new(params[:feedback])
		if @feedback.save
      redirect_to home_path
      flash[:feedback_success] = 'Feedback anda telah kami terima. Terima Kasih anda telah memberikan feedback kepada kami' 
    else
    	redirect_to home_path
    end	
	end
end
