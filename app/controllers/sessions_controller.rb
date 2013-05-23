class SessionsController < ApplicationController
	def new
		render 'sessions/new'
	end

	def create
		subscriber = Subscriber.find_by_email(params[:session][:email])
		if subscriber && subscriber.authenticate(params[:session][:password])
			# success
			sign_in(subscriber, params[:session][:remember_me])
			redirect_to home_path #subscriber
		else
			# login failed
			flash[:login_error] = 'Invalid email/password combination'
			redirect_to login_path
		end
	end

	def login_facebook
		subscriber = Subscriber.from_omniauth(env['omniauth.auth'])
		sign_in(subscriber, 1) #login via facebook automatically add remember me
		redirect_to home_path
	end

	def destroy
		sign_out
		redirect_to login_path
	end
end
