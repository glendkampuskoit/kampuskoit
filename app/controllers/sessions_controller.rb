class SessionsController < ApplicationController
	def new
		if current_subscriber
      redirect_to home_path
    else
    	render 'sessions/new'
    end		
	end

	#def create
	#	subscriber = Subscriber.find_by_email(params[:session][:email])
	#	if subscriber && subscriber.authenticate(params[:session][:password])
	#		# success
	#		sign_in(subscriber, params[:session][:remember_me])
	#		redirect_to home_path #subscriber
	#	else
	#		# login failed
	#		flash[:login_error] = 'Invalid email/password combination'
	#		redirect_to login_path
	#	end
	#end

	def create
		subscriber = Subscriber.from_omniauth(env['omniauth.auth'])
		sign_in(subscriber, 1) #login via facebook automatically add remember me
		flash[:success] = 'Login sukses! Selamat datang di Kampus.co.id'
		redirect_to home_path
	end

	def destroy
		sign_out
		redirect_to login_path
	end
end
