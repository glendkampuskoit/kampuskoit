class UsersController < ApplicationController
  def new
  	@user = User.new
    render 'users/new'
  end

  def show
  	@user = User.find(params[:id])
  end

  def create
  	@user = User.new(params[:user])
  	if verify_recaptcha(:model => @user, :message => "Oh! It's error with reCAPTCHA!") && @user.save
    #if @user.save
  		# code here
      # sign_in @user
      UserMailer.welcome_email(@user)
      flash[:success] = "Pendaftaran Sukses. Silakan cek email anda untuk melakukan verifikasi email."
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  def confirm
    #@user = User.find_by_remember_token(params[:token])
    @user = User.where(:remember_token => params[:token], :id => params[:memberid]).first
    if(@user)
      @user.email_activation = true
      if @user.save
        # code here
        redirect_to root_path
      else
        redirect_to root_path
      end
    else
      redirect_to root_path
    end
  end
end
