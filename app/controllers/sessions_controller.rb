class SessionsController < ApplicationController
	def new
		render 'sessions/new'
	end

	def create
		user = User.find_by_email(params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			# success
			sign_in user
			redirect_to user
		else
			# login failed
			flash[:error] = 'Invalid email/password combination'
			redirect_to login_path
		end
	end

	def login_facebook
		user = User.from_omniauth(env['omniauth.auth'])
		sign_in user
		redirect_to user
	end

	def destroy
		sign_out
		redirect_to login_path
	end
end
