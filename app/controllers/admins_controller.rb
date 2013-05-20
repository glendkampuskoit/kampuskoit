class AdminsController < ApplicationController
	layout 'admin'

	def index
		@admins = Admin.paginate(:page => params[:page], :per_page => 30)
	end

	def new
		@admin = Admin.new		
	end

	def create
		@admin = Admin.new(params[:admin])
  	#if verify_recaptcha(:model => @subscriber, :message => "Oh! It's error with reCAPTCHA!") && @subscriber.save
    if @admin.save
  		# code here
      #sign_in @subscriber
      #SubscriberMailer.welcome_email(@subscriber).deliver
      #flash[:success] = "Pendaftaran Sukses. Silakan cek email anda untuk melakukan verifikasi email."
  		redirect_to 'index'
  	else
  		render 'new'
  	end		
	end

	def edit
		@admin = Admin.find(params[:id])
	end

	def update
		@admin = Admin.find(params[:id])
    if @admin.update_attributes(params[:admin])
      redirect_to admins_path, notice: 'Admin was successfully updated.' 
    else
      render action: "edit"
    end
	end

	def destroy
		@admin = Admin.find(params[:id])
    @admin.destroy
    redirect_to admins_path		
	end
end
