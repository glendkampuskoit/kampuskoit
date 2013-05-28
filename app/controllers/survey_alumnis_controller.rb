class SurveyAlumnisController < ApplicationController
	def new
		@survey_alumni = SurveyAlumni.new
		
	end

	def create
		@survey_alumni = SurveyAlumni.new
		@survey_alumni.subscriber = current_subscriber
		@survey_alumni.score = 100
		@survey_alumni.hasil = params.to_s

		if @survey_alumni.save
			redirect_to home_path
		else
			render :new
		end
	end
end
