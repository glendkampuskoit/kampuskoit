class SubscribersController < ApplicationController
	def new
		@subscriber = Subscriber.new
		render 'subscribers/new', layout: false
	end

	def create
		@subscriber = Subscriber.new(params[:subscriber])
	  	if @subscriber.save
	  		SubscriberMailer.thanks(@subscriber)
	  		flash[:success] = "Pendaftaran Sukses. Silakan mengecek email anda"
	  		redirect_to subscribe_path
	  	else
	  		flash[:error] = "Email tidak valid atau sudah terdaftar"
	  		redirect_to subscribe_path
	  	end
	end
end
