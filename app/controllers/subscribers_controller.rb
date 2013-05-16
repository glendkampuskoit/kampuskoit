class SubscribersController < ApplicationController
  def index
  end
  
  def new
  	@subscriber = Subscriber.new
    #render 'subscribers/new'
  end

  def show
  	@subscriber = Subscriber.find(params[:id])
  end

  def create
  	@subscriber = Subscriber.new(params[:subscriber])
  	#if verify_recaptcha(:model => @subscriber, :message => "Oh! It's error with reCAPTCHA!") && @subscriber.save
    if @subscriber.save
  		# code here
      #sign_in @subscriber
      SubscriberMailer.welcome_email(@subscriber).deliver
      flash[:success] = "Pendaftaran Sukses. Silakan cek email anda untuk melakukan verifikasi email."
  		render 'new'
  	else
  		render 'new'
  	end
  end

  def confirm
    #@subscriber = Subscriber.find_by_remember_token(params[:token])
    @subscriber = Subscriber.where(:remember_token => params[:token], :id => params[:memberid]).first
    if(@subscriber)
      @subscriber.email_activation = true
      if @subscriber.save
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
