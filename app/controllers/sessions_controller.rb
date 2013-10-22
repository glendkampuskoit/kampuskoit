class SessionsController < ApplicationController
	def new
		if current_subscriber
      redirect_to home_path
    else
    	render 'sessions/new'
    end		
	end

	def create
		subscriber = Subscriber.from_omniauth(env['omniauth.auth'])
		sign_in(subscriber, 1) #login via facebook automatically add remember me
		flash[:success] = 'Login sukses! Selamat datang di Kampus.co.id'
		redirect_to new_survey_responden_path
	end

	def destroy
		sign_out
		redirect_to login_path
	end
end
