class PasswordResetsController < ApplicationController

	def new
		@subscriber = current_subscriber
		
	end

	def create
		subscriber = Subscriber.find_by_email(params[:email])

		if subscriber
			subscriber.send_password_reset 
			sign_out
			redirect_to login_path, :notice => "Instruksi untuk me-reset password telah dikirim ke email anda"		
		else	
			redirect_to login_path, :notice => "Email yang anda masukkan tidak valid"		
		end
	end

	def edit
		@subscriber = Subscriber.find_by_password_reset_token!(params[:id])
	end

	def update
		@subscriber = Subscriber.find_by_password_reset_token!(params[:id])
		if @subscriber.password_reset_sent_at < 2.hours.ago
			redirect_to login_path, :alert => "Password Reset request has expired"
		elsif @user.update_attributes(params[:user])
			redirect_to login_path, :notice => "Password berhasil di-reset"
		else
			render :edit
		end
	end
end
