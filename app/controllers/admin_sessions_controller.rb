class AdminSessionsController < ApplicationController
	layout "admin"
	
  def new
  end

  def create
  	admin = Admin.find_by_email(params[:admin_session][:email])
  	  if admin && admin.authenticate(params[:admin_session][:password])
  	  	# success
  	    sign_in admin
  	    redirect_to dashboard_path
  	  else
  	  	# login failed
  	  	flash[:login_error] = 'Email atau password salah'
  	  	redirect_to admin_login_path
  	  end
  end

  def destroy
  end
end
