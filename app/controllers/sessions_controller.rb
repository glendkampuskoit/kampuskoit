class SessionsController < ApplicationController
	def new
		render 'sessions/new'
	end

	def create
		subscriber = Subscriber.find_by_email(params[:session][:email])
		if subscriber && subscriber.authenticate(params[:session][:password])
			# success
			sign_in subscriber
			redirect_to subscriber
		else
			# login failed
			flash[:error] = 'Invalid email/password combination'
			redirect_to login_path
		end
	end

	def login_facebook
		subscriber = Subscriber.from_omniauth(env['omniauth.auth'])
		sign_in subscriber
		redirect_to subscriber
	end

	def destroy
		sign_out
		redirect_to login_path
	end
end
